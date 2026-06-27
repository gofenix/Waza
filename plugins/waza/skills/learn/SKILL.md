---
name: learn
description: "用六阶段研究流程，把陌生领域、来源集合或已收集材料整理成可发布输出。Use when users ask 学习一下/深入研究/研究一下/整理成文章/deep dive/compile sources or need one coherent reference from many inputs. Not for quick lookups or single-file reads."
when_to_use: "学习一下, 深入研究, 研究一下, 整理成文章, deep dive, compile sources, unfamiliar domain, source bundle, one coherent reference"
dispatch_intent: "陌生领域深度研究、多来源综合、从材料到可发布输出"
---

# Learn: 把陌生领域研究到能输出

Prefix your first line with 🥷 inline, not as its own paragraph.

**Update check（非阻塞）**。开始前运行一次 `bash ../../scripts/check-update.sh`；如果它输出提示，把那一行转告用户，然后继续。脚本每天最多读一次公开版本文件，不发送本地数据，失败时静默。

把一堆材料或一个陌生领域变成结构清晰、可引用、可发布的输出。不要把“学习”做成泛泛总结；最终必须能让读者少走弯路。

## Outcome Contract

- Outcome: 用户得到一份结构化研究输出，能解释领域、关键概念、争议、证据和可行动结论。
- Done when: 来源已收集并分层，主张有依据，结构经过自审，未知和不确定被标出。
- Evidence: 原始链接、PDF、论文、文档、仓库、用户提供材料、检索结果和抓取内容。
- Output: 研究 brief、文章、提纲、学习路线、对比表或可交付文稿，按用户要求选择。

## When to Use

使用 `/learn`：

- 用户给了一批来源，希望综合成一个答案。
- 用户要深入理解一个陌生领域。
- 用户要从素材整理成文章、报告、讲稿或决策参考。
- 任务需要比较多个观点、时间线、证据强弱。

不要使用 `/learn`：

- 只需要读一个链接，用 `/read`。
- 只是改写已有稿子，用 `/write`。
- 只是调试代码，用 `/hunt`。
- 只是做工程方案，用 `/think`。

## Six Phases

1. **Scope**：明确研究问题、目标读者、输出形态、时间边界、必须覆盖和明确不覆盖的内容。
2. **Collect**：收集一手来源优先。网页、PDF、论文、代码仓库先用 `/read` 或本地工具取回干净内容。
3. **Digest**：把来源分成事实、解释、观点、案例、数据和未证实说法。记录冲突点。
4. **Structure**：先做骨架，再填内容。避免按来源逐篇复述。
5. **Write**：用读者能跟上的顺序输出，关键术语第一次出现要解释。
6. **Self-review**：检查主张是否有证据、有没有遗漏反方、有没有把猜测写成事实。

## Source Rules

- 优先使用一手来源：官方文档、论文、代码、公告、数据集、原始采访。
- 二手文章可用于线索和解释，但不能单独支撑关键结论。
- 对最新、容易变化或高风险信息，必须 live verify。
- 来源不足时直接说不足，不补脑。

## Output Modes

| User asks for | Output |
|---|---|
| 学习一下 | 概念地图 + 核心机制 + 推荐阅读顺序 |
| 深入研究 | 结构化研究报告，含证据和不确定性 |
| 整理成文章 | 可发布草稿，按读者视角组织 |
| compare / 对比 | 维度表 + 结论 + 适用场景 |
| briefing | 决策摘要 + 风险 + 下一步 |

## Hard Rules

- 不要只堆来源摘要；必须综合。
- 不要用“业内普遍认为”这类无来源话术。
- 不要把模型推断包装成事实。
- 重要数字、日期、版本、政策和 API 状态需要当前验证。
- 长输出要有结构，但不要为了显得完整而加空泛章节。

## Handoff

如果研究结果会进入 `/write`，最后给出可编辑草稿或清晰提纲。如果会进入 `/think`，最后给出决策所需的事实、约束和可选方向，不替 `/think` 做架构计划。
