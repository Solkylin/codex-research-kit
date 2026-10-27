[CmdletBinding()]
param([string]$Root = (Split-Path -Parent $PSScriptRoot))
$ErrorActionPreference = 'Stop'
$issues = [System.Collections.Generic.List[string]]::new()
$required = @(
  'AGENTS.md',
  'README.md',
  'LICENSE',
  'THIRD_PARTY_NOTICES.md',
  'manifest.json',
  'skills/research-to-deliverable/SKILL.md',
  'skills/research-to-deliverable/agents/openai.yaml',
  'skills/publication-figures/SKILL.md',
  'skills/docling/SKILL.md',
  'skills/technical-presentations/SKILL.md',
  'third_party/tavotto/codex-plugin/LICENSE'
)
foreach ($path in $required) { if (-not (Test-Path -LiteralPath (Join-Path $Root $path) -PathType Leaf)) { $issues.Add("missing: $path") } }
$all = Get-ChildItem -LiteralPath $Root -Recurse -File -Force | Where-Object { $_.FullName -notmatch '\\.git\\' -and $_.FullName -notmatch '\\third_party\\' -and $_.Name -ne 'validate-package.ps1' }
foreach ($file in $all) {
  $text = Get-Content -LiteralPath $file.FullName -Raw -Encoding UTF8 -ErrorAction SilentlyContinue
  if ($null -eq $text) { continue }
  if ($text -match '(?i)(C:\\Users\\|H:\\DeskTop\\|G:\\MATLAB|codexBNE|company-control-engineering|BEGIN (RSA|OPENSSH) PRIVATE KEY|ghp_[A-Za-z0-9]{20,}|sk-[A-Za-z0-9]{20,})') {
    $issues.Add("sensitive-path-or-token-pattern: $($file.FullName.Substring($Root.Length + 1))")
  }
}
$main = Get-Content -LiteralPath (Join-Path $Root 'skills/research-to-deliverable/SKILL.md') -Raw -Encoding UTF8
if ($main -match 'complex-task-orchestrator') { $issues.Add('stale complex-task-orchestrator reference in main skill') }
if ($issues.Count -gt 0) { $issues | ForEach-Object { Write-Error $_ }; exit 1 }
Write-Output "OK: $($all.Count) files checked"

