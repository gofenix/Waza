# Failure Patterns

`/hunt` 用它快速识别常见根因，但不能替代当前证据。

| Pattern | Signal | Check |
|---|---|---|
| 入口变了，调用方没变 | 报 missing arg、unknown field、404、schema mismatch | 查最近 API/type/config 改动 |
| 生成物 drift | 源文件正确，产物/镜像/lockfile 错 | 跑生成命令并 diff |
| 缓存陈旧 | 清缓存后好，重启后好 | 查 cache key、mtime、version salt |
| 并发竞态 | 单测偶现、顺序相关 | 降并发、加日志、查共享状态 |
| 路径/工作目录错误 | 本机可用、CI 不行，或相对路径失效 | 打印 cwd、resolve path、检查 packaged layout |
| 环境缺失 | 命令不存在、依赖版本不同 | 读 manifest、CI、lockfile |
| Unicode/IME | 输入看似相同但比较失败 | 打印 codepoint、normalize |
| 视觉回归 | 截图变化但逻辑没报错 | 对比 DOM、CSS、资源加载、viewport |

根因证明要找到第一个背离预期的点。只证明“这样改能好”不等于证明根因。
