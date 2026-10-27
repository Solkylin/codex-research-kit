# 技能与工具路由

先确定所需能力，再选当前可用工具与最窄的专业 skill。下表是候选索引，不声明每项都已安装、认证或可调用，也不是能力白名单。表外有更适用的现有能力时直接补选。

## 按任务选择

| 任务信号 | 能力与首选路径 | 按需加载的方法 |
|---|---|---|
| 当前事实、官网、标准与厂商文档 | 原生网络检索，或已可调用的 Parallel、Exa、Firecrawl；重要结论读取原文 | `research-lookup`；OpenAI 产品与配置先用 `openai-docs` |
| 论文发现、作者、主题与引用链 | 已可调用的 Consensus、SciSpace、Firecrawl 论文工具；公开数据库或 `paper-lookup` 补充覆盖 | `research-lookup`、`paper-lookup`；需要综合时用 `literature-review` |
| 难以一次检索解决的深入文献研究 | Undermind 或其他已可用深度研究能力；异步任务跟踪到完成、失败或确需用户处理 | `literature-review`；普通检索不启动长任务 |
| 来源冲突、研究设计与正式评审 | 比较原始主张、方法、工况与证据 | `scientific-critical-thinking`；正式审稿用 `peer-review` 或 `scholar-evaluation` |
| 引用、BibTeX、个人文献库 | 项目已有 `.bib`/CSL 文件；Zotero/Better BibTeX 或 `pyzotero`；本地读模式可用时无需 Web API 密钥 | `citation-management`、`pyzotero`；提交或明确要求时再完整核验书目 |
| 定义、证明、符号推导与量纲 | [数学建模](mathematical-modeling.md)；沿用 SymPy、MATLAB Symbolic，必要时用 Wolfram 独立复核 | `sympy`、`matlab-use-symbolic-math`；数值或工具输出不替代要求的证明 |
| 统计、回归、概率推断与优化 | 既有 Python/R/MATLAB 数据链 | `statistical-analysis`、`statsmodels`、`pymc`、`pymoo`、`scikit-learn` 中与方法匹配的一项 |
| 数据探索、时序、仿真与大数据 | [计算实验](computational-experiment.md)，优先项目环境和现有数据 | `exploratory-data-analysis`、`aeon`、`polars`、`networkx`、`simpy` 按对象选择；资源影响方案才用 `get-available-resources` |
| MATLAB/Simulink 代码、模型与仿真 | 最窄的 `matlab-*` 或 Simulink 专业 skill；仅实际执行、连接或操控会话时加载 `matlab-control` | `matlab`、`building-simulink-models`、`simulating-simulink-models`、`testing-simulink-models`；合规与设计错误按任务加载对应 skill |
| 新建或编辑位图图像素材 | 若当前会话暴露 Codex 内置官方 `image_gen`，优先使用并按 `imagegen` skill 操作 | 内置工具未暴露时，按任务使用当前已连接的 Adobe Firefly、Magnific、Canva 或 Figma 图像能力；内置工具可用时，外部工具用于用户指定的平台或专属能力。CLI/API 图像生成只在用户明确选择后使用 |
| 论文数据图、多面板图与不确定性 | 沿用 MATLAB、Python 或 R 后端；先确定图支持的结论、单位、样本和误差 | `publication-figures` 负责成果要求；Python 布局、样式或导出实现再选 `scientific-visualization`、`matplotlib`、`seaborn`，不启动第二套总编排 |
| 已有图的点选精修、反复调整细节或矢量组图 | 先辨认实际绘图库：Matplotlib/Seaborn 可用 Tavotto 或 Pylustrator；MATLAB 用原生图形编辑；跨后端排版用 Scientific Inkscape | `publication-figures` 的交互精修参考；一次选择适合修改保存方式的一条路线，不把 Python 的其他绘图库强送 Matplotlib 编辑器 |
| 精确原理图、架构和有标签的技术图 | Graphviz、Mermaid、MATLAB/Python、SVG、TikZ 或 Inkscape 等可编辑路线 | `scientific-schematics`、`markdown-mermaid-writing`；标签、公式、拓扑或几何需精确时不以生成式位图代替 |
| 概念插图、封面图、背景或非数据视觉素材 | Codex 内置官方 `image_gen` 优先，按 `$imagegen` 流程生成并检查 | 外部图像插件仅按用户指定或专属编辑能力使用；生成图不代替数据图、公式或可核验的技术证据 |
| 简单 PDF 查读、页码或精确裁图 | `pdf`/PyMuPDF；文字足够时直接提取，不先启动结构化模型 | `pdf` 或 `pdf:pdf`，按宿主与本地运行条件选择 |
| 复杂版面、跨论文图注/表格或结构检索 | 本地窄入口 `docling`；关键图号、公式与表头回查原页 | [文献到技术演示](document-to-presentation.md)；上游方法只是按需参考 |
| 扫描件与中文 OCR | 本机 Tesseract/OCRmyPDF 与用户语言包；原始扫描保留 | `pdf`/`pdf:pdf`；需要结构化时再组合 `docling` |
| Quarto、Notebook 与多格式研究报告 | 项目解释器优先；本机 Quarto 包装器入口见[工具链索引](../../../docs/toolchain-profile.md)；直接转换用独立 Pandoc | [出版与正式交付](latex-and-deliverables.md)、`jupyter-notebook`、`scientific-writing` 或目标格式 skill |
| LaTeX、期刊模板与数学 PDF | 宿主提供编辑/编译工具时按其工作流；多文件模板或本地依赖用现有 TeX Live | [出版与正式交付](latex-and-deliverables.md)、`pdf`/`pdf:pdf` |
| Typst 技术文档 | 实际 Typst CLI 与可用编辑器；用户指定或适合轻量排版时选择，不擅自改换期刊模板 | [出版与正式交付](latex-and-deliverables.md) |
| 已打开的 Word/Excel/PPT 或当前原生画布 | 先查看可见的文档控制会话、`excel-live-control` 或原生制品会话能力，再按该格式操作 | 当前格式 skill；没有绑定会话时直接走文件路径，不为找会话拖延任务 |
| 本地 Word 文件 | 原生制品工具及其运行时可用时采用 `documents:documents`；本地文件走 `docx` 与已可用 Word/Python/JS 路线 | 一次选定能保留所需内容和格式的路径，检查实际文件 |
| 本地 PowerPoint/PPTX | 显式读取 [technical-presentations](../../technical-presentations/SKILL.md) 组织证据、页面与讲述；`pptx`、PowerPoint 或当前可用原生演示工具负责可编辑文件与渲染检查 | [交付物设计](deliverable-design.md)；资料提取按[工具入口](document-to-presentation.md) |
| Google Slides、Canva、Figma Slides 或 Spaces 演示 | 技术内容显式读取 [technical-presentations](../../technical-presentations/SKILL.md)，按用户指定的平台、已有源文件和当前可用工具选择对应连接器/制品工具 | Google Slides 走 Google Drive；Canva、Figma、Spaces 只用于目标位于该平台或用户选择该平台的任务 |
| 工作簿、公式与数据表 | 可用的 `spreadsheets:Spreadsheets` 或 `xlsx`；重算和显示检查按目标环境 | 当前格式 skill；业务分析插件仅在实际可见且适合时补选 |
| 公共数据集、模型与 ML 基准 | Hugging Face 的数据集、论文、模型或文档工具；本地计算环境与项目方法接续 | 匹配的 `hugging-face:*`、`scikit-learn` 或其他训练/数据 skill；远程付费任务按实际授权 |
| 仓库、现有实现与 CI | GitHub 连接器或本机 git/gh；优先当前仓库与已有认证 | `gh-fix-ci`、`gh-address-comments` 仅在对应任务需要时 |
| 网页操作、交互成果与浏览器检查 | 宿主浏览器能力，或现有 Playwright/系统浏览器；下载浏览器不是默认步骤 | `playwright`/`playwright-interactive`，按当前运行时选择 |
| Drive、Gmail、Canva、CloudBase 等外部服务 | 直接选可用的对应连接器，遵循其入口与操作约定 | 有对应专业 skill 时再读取；不因缺少 skill 而忽略可调用工具 |
| 业务指标、仪表板与业务报告 | 当前可用数据源及分析方法；`data-analytics:*` 仅作为已安装且可见时的可选路线 | 不假设旧插件名称仍存在，不因可选插件缺失停止本地分析 |
| 格式转换与中间内容提取 | 简单转换用 `markitdown`、Pandoc 或格式原生工具 | 正式成品仍接目标格式 skill；中间转换不自动生成示意图 |

## 选择与回退

1. 在当前工具清单中找所需能力；有延迟发现入口时按任务检索后再判断缺失。能力可用、有配套 skill、已安装、已认证与适合本任务是不同条件。
2. 从完成标准判断哪种现有专业能力能实质改善结果，选择后实际调用或完成最小接入。不能因为不熟悉、需要读说明或第一次失败就把适用能力当作不存在；也不要求逐个试遍等价品牌。项目环境和依赖约定优先，新增依赖须有明确收益；普通搜索不为选定品牌安装软件或索取密钥。
3. 保持主流程负责共同前提与整合，专业 skill 负责领域操作。内容规划与文件制作可以组合，相同职责的替代后端不重复运行；不同证据来源的补充检索不受此限制。
4. MATLAB/Simulink 数据优先 MATLAB，Python/R 数据优先各自后端；数据变换与绘图生成保持一致。源图导出后的矢量组图、排版及独立渲染可以使用适用编辑器，保留源图和编辑后矢量文件，不把视觉修改当作数据重算。
5. 用户给出了格式、服务或工具选择时遵循其要求。必要外部能力受阻时说明具体未完成事项；可选连接失败则继续本地或其他可行部分，不把替代品说成原请求已完成。
6. 中间数据表示、提取格式和小型实现选择由任务自主确定。缺失信息只有实质改变结果时才提问，不为每个工具重复问用途或输出偏好。
7. 工具选择、认证状态与执行记录留在工作对话或必要状态文件，正式成品只保留目标读者需要的技术内容与来源。

调用出错时先依据错误核对参数、目标文件、运行目录、解释器、会话和所需权限，做有实际依据的修正再尝试；同一错误没有新信息时改走能满足目标的已知路径。可选后端失败不结束整个任务，必要环节仍须完成；没有能力能满足明确要求时说明具体缺口，不能把文字建议当作所需文件或操作结果。

格式制作按运行时选路。容器专用 skill 可见，不表示其容器、依赖加载器或制品会话在本机可用；存在对应工具时先核实所需入口，不存在时直接用已配置的本地格式工具。Windows 本机 Office 可承担打开、重算和导出，LibreOffice 只是实际存在且兼容时的替代；不因历史示例使用 `soffice` 就自动安装另一套大型办公软件。路径以所选 skill 根目录和工具链索引解析，不把示例里的 `scripts/` 当成当前项目已有文件。

## 本机入口与维护

机器路径、解释器、已装库、Quarto 包装器和当前软件状态统一维护在[科研工具链索引](../../../docs/toolchain-profile.md)。项目已有环境优先；只有选路依赖机器环境时才读取索引。索引不在当前机器或与实际不符时，检查必要入口，不扫描全机或迁移其他项目的虚拟环境。

`research-to-deliverable` 保持自动发现；[technical-presentations](../../technical-presentations/SKILL.md)、`publication-figures` 与本地 `docling` 作为支持 skill，由主流程在任务信号匹配时显式读取。手动调用主 skill 并提供任务即可进入上述路由，无需逐个点选专业工具；名称与能力仍以当前会话为准。

