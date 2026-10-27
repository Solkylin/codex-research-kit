---
name: docling
description: 使用 Docling 对复杂 PDF、扫描资料或多篇文献做章节、表格、图注与结构化提取。普通 PDF 文字查读和精确裁图优先轻量 PDF 工具；不用于文档排版制作。
license: MIT
---

# Docling 文献结构提取

用于确实需要版面结构、阅读顺序、图注/表格关系或跨文献结构检索的任务。先试能覆盖主要难点的代表文件，再决定是否批量处理。原件的文字层已足够时使用 `pdf`/PyMuPDF，不启动模型下载或全库转换。

## 本地工作约定

- 项目已有 Docling 环境优先。否则检查实际解释器/CLI；机器入口见[工具链索引](../../docs/toolchain-profile.md)。没有可执行库时，不把 skill 文件可见当作已安装；先用轻量路径完成可行部分，结构解析确有必要时再按项目约定选择隔离依赖。
- 中间提取用于阅读时默认 Markdown，需要章节、表格、图注或位置关系时选结构化 JSON。用户明确指定最终格式时遵循要求；只有最终交付选择会实质改变结果时才提问。上游“未指定格式先询问”只用于确需用户决定的最终转换，中间表示由本流程自行选择。
- 原件、本地结果和输出目录明确分开。脚本路径、临时目录、OCR 引擎与模型缓存按当前系统解析，不照搬上游的 `/tmp/` 或其他项目路径。
- 已可用的在线文档解析器可用于公开或获准发送的材料；内部资料默认本地处理。不要为了获得结构化结果擅自上传原件。
- 章节和表格候选用于定位；决定结论的图号、公式、上下标、单位和表头回查原页。近空或乱码输出先判断扫描、阅读顺序或解析失败，再选择 OCR/VLM，不把重复转换次数当作成功。
- 本地 skill 负责本机任务适配；固定上游内容保留为方法参考，不作为另一个全局自动入口。

## 按需阅读上游方法

[上游入口原文](../research-to-deliverable/references/upstream/docling-2.138.0-skill/UPSTREAM.md)保持原始内容。只有选定具体模式后，读取相应参考，避免整套加载。

| 实际操作 | 参考 |
|---|---|
| 已装 CLI 做单次转换 | [CLI](../research-to-deliverable/references/upstream/docling-2.138.0-skill/references/cli.md) |
| 批量、管线设置、图表对象与位置 | [Python SDK](../research-to-deliverable/references/upstream/docling-2.138.0-skill/references/python-sdk.md) |
| 提取指定类型字段 | [结构化提取](../research-to-deliverable/references/upstream/docling-2.138.0-skill/references/extraction.md) |
| 分块与检索索引 | [RAG](../research-to-deliverable/references/upstream/docling-2.138.0-skill/references/rag.md) |
| 已授权的远程转换服务 | [服务客户端](../research-to-deliverable/references/upstream/docling-2.138.0-skill/references/service-client.md) |
| 必须新增依赖时选择最小组件 | [依赖裁剪](../research-to-deliverable/references/upstream/docling-2.138.0-skill/references/slim-packaging.md) |

## 验证与返回

检查所选文件是否解析成功，PDF 页数是否对应，关键结构是否与原页相符。局部提取只报告实际覆盖的页和对象；缺失或无权限材料说明范围。返回当前任务需要的提取结果与可定位来源，不自动增加版式报告、过程日志或示意图。


