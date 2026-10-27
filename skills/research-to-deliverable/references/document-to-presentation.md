# 资料到演示的工具入口

技术演示的证据组织、版式、措辞、讲稿和检查统一读取 [technical-presentations](../../technical-presentations/SKILL.md)。本文件只保留资料查读、提取和相关工具入口，按需要选择。

| 当前需要 | 路线 | 使用边界 |
|---|---|---|
| 简单 PDF 文字、页码或精确裁图 | `pdf` / PyMuPDF | 文字足够时直接提取；原页坐标用于裁取，保留比例、图例和条件 |
| 多篇论文的章节、图注或表格候选检索 | [本地 Docling](../../docling/SKILL.md)，再按需读其固定上游 SDK/CLI 参考 | 先试代表文件；关键图号、表头、公式和阅读顺序回查原页 |
| 扫描 PDF 与中文 OCR | 已安装的 Tesseract / OCRmyPDF，按需要组合 Docling | 保留扫描原图；单独核对符号、上下标与表格关系 |
| 数值结果重绘或数据图精修 | [publication-figures](../../publication-figures/SKILL.md) 与原计算后端 | 读取真实数据，保留单位与工况；重绘和重新执行模型分别判断 |
| 精确结构、机制和信号关系 | 当前 `scientific-schematics` 与可编辑矢量或原生工具 | 标签、公式、拓扑和需核验的几何由精确工具表达 |
| 演示及配套讲稿 | [technical-presentations](../../technical-presentations/SKILL.md)，再接目标格式或平台工具 | 默认方法与用户指定模板的取舍由该技能统一维护 |
| 可编辑 Word | `documents:documents` / `docx` 与可用 Word/Python/JS 路线 | 遵循目标格式和用户指定工具，检查实际文件 |

## 提取环境与来源

先检查项目 Python 环境或 CLI 是否能执行所需模块；技能文件可见与依赖可运行分别判断。需要安装时优先项目隔离环境，不复制其他项目虚拟环境。

Windows 底层 PDF 解析器若对非 ASCII 路径失败，可在不修改原件的前提下测试 BytesIO 或 ASCII 临时工作目录，并核对页数和内容。受保护或无解析权限的文件不计为已读取，也不绕过保护。

固定来源记录在 [versions.json](upstream/versions.json)。Docling 的固定上游入口保存在 [UPSTREAM.md](upstream/docling-2.138.0-skill/UPSTREAM.md)，当前操作使用本地窄入口；其 2.138.0 为已有版本基线。中间提取格式按任务自行选择。

Scientific Slides 的固定设计参考和许可继续保留于 `upstream/`，由 [technical-presentations 的参考入口](../../technical-presentations/references/native-files-and-qa.md) 按需要使用。固定上游资源是方法与来源记录，不代表其中的旧命令、配色、固定图数或审查轮次适用于当前任务。

