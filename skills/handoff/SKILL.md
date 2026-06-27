---
name: handoff
description: "把当前会话压缩成一份交接文档，让新 agent 接手继续工作。Use when users ask handoff/交接/写交接文档/dump context/summarize session. Not for regular writing, editing, or de-AI tasks."
when_to_use: "handoff, 交接, 写交接文档, dump context, summarize session, 会话总结, compact conversation, agent handoff, next agent, 上下文压缩"
dispatch_intent: "交接文档、handoff、会话总结"
---

# Handoff: 会话交接

Prefix your first line with 🥷 inline, not as its own paragraph.

**Update check（非阻塞）**。开始前运行一次 `bash ../../scripts/check-update.sh`；如果它输出提示，把那一行转告用户，然后继续。脚本每天最多读一次公开版本文件，不发送本地数据，失败时静默。

## Outcome Contract

- Outcome: 一份结构清晰、信息完整的交接文档，新 agent 能直接接手继续工作，不需要重读整段会话。
- Done when: 当前状态、关键决策、已完成/待完成、相关文件和建议技能都在文档里。
- Evidence: 当前会话的对话记录、已产出的文件、已做的决策和操作。
- Output: 一份 Markdown 文档，保存到当前工作区根目录的 `HANDOFF.md`。

## Flow

1. 盘点对话：在整段会话里找出已完成和未完成的事项、做出的决策、产出的文件。
2. 写状态：一句话说清现在在做什么、卡在哪里。
3. 写决策：每条一行，写做了什么决定、为什么。
4. 列出已完成和待完成：各 5-8 条，每项控制在 15 字以内。
5. 列出相关文件：引用路径或 URL，不复制内容。
6. 掩盖密钥、密码、token 和 PII。
7. 末尾写建议技能：一行一个技能名。
8. 保存到当前工作区根目录，文件名 `HANDOFF.md`。如果已有同名文件，先在末尾追加分隔线再写新内容，或按用户要求命名。
9. 如果用户给了参数，把它当作下一个会话的重点方向，只保留相关内容。

## Hard Rules

- 保存到当前工作区根目录，文件名 `HANDOFF.md`。
- 引用已有产物，不复制正文。
- 掩盖密钥、密码、token 和 PII。
- 交接文档是给 agent 读的，不做去 AI 味处理。清晰、结构化优先于自然。
- 不念空泛开场和总结腔。第一行就是当前状态。
- 不用表格，不做加粗和格式装饰。

## Gotchas

| 行为 | 规则 |
|------|------|
| 交接文档写到了系统临时目录 | 保存到工作区根目录 HANDOFF.md，写完提醒用户路径 |
| 在文档里复述已有文件的内容 | 只引用路径或 URL |
| 漏掉了密钥或 token | 写入前检查整份文档中的敏感信息 |
| 加了“本次会话完成了以下工作：”等开场 | 第一行直接写当前状态 |
| 篇幅过长（超过一屏） | 压缩条目，控制在一屏内 |

## Output

```text
🥷 Handoff: <主题>

当前状态
<一句话>

关键决策
- <决定>：<原因>

已完成
- <条目>

待完成
- <条目>

相关文件
- `path/to/file` 或 URL

建议技能
- skill-name
```
