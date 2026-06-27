# Control Inspector

用于 `/health` 深挖 agent 控制面：权限、hooks、MCP、工具可达性、运行时配置。

检查：

- 权限是否过宽或过窄，是否和项目风险匹配。
- hooks 是否存在、可执行、失败时是否可见。
- MCP server 是否可达，失败是否有清晰降级。
- 配置是否在多个文件里重复定义并互相覆盖。
- 验证命令是否真的会运行，而不是只写在文档里。
- agent 是否被要求使用不存在的工具或插件。

诊断命令示例：

```bash
git status --short --branch -uall
find . -maxdepth 3 -name AGENTS.md -o -name CLAUDE.md
```

输出时给出可复制的下一步命令，不要只说“检查配置”。
