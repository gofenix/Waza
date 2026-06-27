# Public Reply

用于 issue、PR、release comment 和 maintainer 回复。

原则：

- 先确认事实，再表达态度。
- 短，具体，有下一步。
- 不把内部推理、私有路径、token、机器状态或未公开上下文写出去。
- 不承诺没有验证过的发布日期、性能数字或兼容范围。
- 关闭 issue 时给出证据：commit、release、测试、复现结果或“needs info”。

常用形态：

```text
Thanks for the report. I reproduced this with {command/version}. The fix is in {commit/PR}; it will be available in {release/version}.
```

```text
I could not reproduce this yet. Please share {minimal info}. Without that, the next action would be guesswork.
```

```text
This is outside the current scope because {one concrete boundary}. I am closing this to keep the tracker focused.
```
