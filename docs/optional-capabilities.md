# Optional capability catalog

本仓库只捆绑可公开复用的主流程和少量 MIT 支持 skill。下面的目录用于路由目标设备上已经安装或由用户另行安装的能力，不把宿主专用或无再发布许可的实现复制进来。

## Research and evidence

- `research-lookup`: 当前事实、论文、标准和技术文档的来源定位。
- `paper-lookup`: 跨数据库发现论文、预印本与元数据。
- `literature-review`: 综述、系统检索、证据综合和引用链。
- `scientific-critical-thinking`: 证据强度、偏差、混杂与模型假设检查。
- `scientific-writing`: 论文、技术报告和正式章节。
- `citation-management` / `pyzotero`: 书目、BibTeX 与 Zotero 数据。

## Mathematics, data and simulation

- `sympy`、`statistical-analysis`、`statsmodels`、`pymc`、`pymoo`、`scikit-learn`、`polars`、`networkx`、`simpy`：按数学对象、统计方法、机器学习或数据规模选择。
- `matlab`、`matlab-control`、`matlab-build-chart`：MATLAB/Simulink 代码、会话、仿真与图表。
- MathWorks 窄域 skills：根据任务信号加载对应的通信、雷达、车辆、机器人、图像、优化或代码生成能力。

## Files and delivery

- `pdf`、`docx`、`pptx`、`xlsx`、`jupyter-notebook`、`markitdown`：目标设备有相应许可和工具时使用。
- Quarto、Pandoc、LaTeX、Typst、Office 和原生演示工具由目标设备配置文件确认，不由 skill 文件假定安装。

## Selection rule

主流程先判断完成标准，再选择最窄的能力。不存在或不可调用的可选能力不阻断本地工作；必须由外部服务或专用会话完成的步骤，说明具体受阻位置和可复用产物。

## Upstream references

- [OpenAI Agent Skills](https://developers.openai.com/api/docs/guides/tools-skills)
- [OpenAI skill creator](https://github.com/openai/skills/tree/main/skills/.system/skill-creator)
- [Docling](https://github.com/docling-project/docling)
- [Quarto](https://quarto.org/)
- [Tavotto](https://github.com/Tavotto/Tavotto)

