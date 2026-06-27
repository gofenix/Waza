# Context Inspector

用于 `/health` 深挖指令面、上下文供应链和记忆使用问题。

检查：

- `AGENTS.md`、`CLAUDE.md`、`.codex/AGENTS.md`、`.claude/rules/*.md` 是否互相冲突。
- 规则是否可执行，还是只有愿望式口号。
- 是否存在过期命令、旧路径、已删除脚本或不存在的工具。
- 是否把私有记忆、一次性事故、个人机器配置写进公共文档。
- 是否有本地 overlay 覆盖了项目公开规则。
- 指令是否太长、重复、互相抢优先级。

输出：

- 每个问题标明 layer：instruction surface、memory supply、project context。
- 给具体文件/行号和最小修复建议。
- 如果只是偏好不同，不当作 health finding。
