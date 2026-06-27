# Project Context Template

`/check` 进入任何项目时，先从公开上下文提炼约束。不要把私有记忆、个人路径或机器配置当项目规则。

## Review Context

填这些字段：

- **Review base**：本地 diff、staged diff、PR、range，或用户指定 commit。
- **Changed surface**：语言、框架、生成物、配置、CI、发布文件。
- **Verification commands**：README、Makefile、package scripts、CI 或用户给出的命令。
- **Generated/protected files**：哪些文件由脚本生成，哪些不能手改。
- **Domain risks**：安全、数据、性能、兼容性、用户可见行为。
- **Public reply rules**：issue/PR 回复语气和必须包含的证据。

## Release Gate 2.0

发布或 maintainer action 前填矩阵：

| Gate | Evidence needed |
|---|---|
| Review base | 当前分支、HEAD、diff 范围 |
| Worktree | dirty/staged/untracked 状态 |
| Origin sync | 本地和远端是否一致，是否需要 fetch |
| Version | VERSION、package、manifest、tag 是否一致 |
| Generated artifacts | 生成物是否由官方命令重建且无 drift |
| Package/archive | 包内容、入口文件、权限、大小 |
| Release assets | asset 名称、hash/size、上传状态 |
| Registry/appcast/CI | registry 最新版本、CI 状态、发布 workflow |
| Public state | issue/PR/release 是否已更新并重新读取确认 |

缺少证据时，不要说 ready。

## Command Selection

优先级：

1. 用户本轮指定命令。
2. 项目公开文档和 CI 命令。
3. manifest 推导的最小相关命令。
4. 如果不能运行，说明原因和可复制命令。

## Public Surface Rules

- 不写入 secret、token、证书、私钥、内部路径、个人 home 目录。
- 不把一次性事故复盘直接放进公共规则；只提炼可复用原则。
- 项目 case study 是输入，不是通用政策。
