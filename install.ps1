[CmdletBinding()]
param(
    [switch]$Force,
    [string]$CodexHome = (Join-Path $env:USERPROFILE '.codex'),
    [string]$AgentsHome = (Join-Path $env:USERPROFILE '.agents')
)

$ErrorActionPreference = 'Stop'
$packageRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceAgents = Join-Path $packageRoot 'AGENTS.md'
$sourceSkills = Join-Path $packageRoot 'skills'
$targetAgents = Join-Path $CodexHome 'AGENTS.md'
$targetSkills = Join-Path $AgentsHome 'skills'
$stamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$backupRoot = Join-Path $CodexHome (Join-Path 'backups\codex-research-kit' $stamp)

if (-not (Test-Path -LiteralPath $sourceAgents -PathType Leaf)) { throw "Missing package AGENTS.md" }
if (-not (Test-Path -LiteralPath $sourceSkills -PathType Container)) { throw "Missing package skills directory" }
New-Item -ItemType Directory -Path $CodexHome -Force | Out-Null
New-Item -ItemType Directory -Path $targetSkills -Force | Out-Null

if ((Test-Path -LiteralPath $targetAgents -PathType Leaf) -and -not $Force) {
    throw "Existing AGENTS.md found. Re-run with -Force after reviewing the package."
}

if (Test-Path -LiteralPath $targetAgents -PathType Leaf) {
    New-Item -ItemType Directory -Path $backupRoot -Force | Out-Null
    Copy-Item -LiteralPath $targetAgents -Destination (Join-Path $backupRoot 'AGENTS.md') -Force
}

Copy-Item -LiteralPath $sourceAgents -Destination $targetAgents -Force
foreach ($skill in Get-ChildItem -LiteralPath $sourceSkills -Directory -Force) {
    $destination = Join-Path $targetSkills $skill.Name
    if ((Test-Path -LiteralPath $destination) -and -not $Force) {
        throw "Existing skill found: $destination. Re-run with -Force after reviewing the package."
    }
    if (Test-Path -LiteralPath $destination) {
        New-Item -ItemType Directory -Path $backupRoot -Force | Out-Null
        Copy-Item -LiteralPath $destination -Destination (Join-Path $backupRoot $skill.Name) -Recurse -Force
        Remove-Item -LiteralPath $destination -Recurse -Force
    }
    Copy-Item -LiteralPath $skill.FullName -Destination $destination -Recurse -Force
}

Write-Output "Installed AGENTS.md and $((Get-ChildItem -LiteralPath $sourceSkills -Directory).Count) public skills."
if (Test-Path -LiteralPath $backupRoot) { Write-Output "Backups: $backupRoot" }
Write-Output 'Restart Codex and start a new conversation.'
