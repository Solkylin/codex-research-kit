# Toolchain profile template

这份文件只记录目标设备的实际入口，不把任何个人路径、令牌或运行状态写入 skill。复制为项目或设备自己的 `toolchain-profile.md` 后填写。

## Runtime

| 能力 | 可执行入口 | 版本 | 验证命令 | 备注 |
|---|---|---|---|---|
| Python | `python` / `uv` |  | `python --version` | 项目环境优先 |
| R | `Rscript` / `radian` |  | `Rscript --version` | 仅需要 R 生态时使用 |
| MATLAB | `matlab` |  | `matlab -batch "version"` | 需要会话时再连接 MCP |
| Quarto | `quarto` |  | `quarto check` | 项目环境和 profile 优先 |
| Pandoc | `pandoc` |  | `pandoc --version` | 直接转换时使用 |
| TeX | `xelatex` / `lualatex` |  | `xelatex --version` | 中文 PDF 通常优先 XeLaTeX |
| Typst | `typst` |  | `typst --version` | 轻量技术文档 |
| Graphviz | `dot` |  | `dot -V` | 结构图自动布局 |
| Inkscape | `inkscape` |  | `inkscape --version` | SVG/PDF 矢量检查 |
| OCR | `tesseract` / `ocrmypdf` |  | `tesseract --version` | 扫描资料按需使用 |

## Connected capabilities

记录当前 agent 实际可调用的 MCP、连接器、插件和原生制品工具。缓存目录或安装文件不代表能力已经可调用。

- Research: 
- GitHub: 
- MATLAB/Simulink: 
- Figure editing: 
- Documents and presentations: 
- Data and spreadsheets: 

## Project overrides

项目自己的环境、锁文件、模板和数据链优先于这里的默认值。将解释器、输出格式、期刊模板、图形尺寸和文献库位置写入项目层，不写入全局 skill。
