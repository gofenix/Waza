# IME and Unicode

用于输入法、中文、emoji、全角半角、组合字符导致的问题。

检查：

- 字符串长度是 code unit、code point 还是 grapheme cluster。
- 是否混用了 NFC/NFD。
- 全角空格、不可见空白、零宽字符是否存在。
- 输入法 composition 期间是否提前提交状态。
- 光标位置是否按字节或 code unit 计算，导致中文错位。

调试技巧：

```python
for ch in text:
    print(ch, hex(ord(ch)))
```

浏览器输入法问题要关注：

- `compositionstart`
- `compositionupdate`
- `compositionend`
- `beforeinput`
- `input`

不要在 composition 期间做会破坏候选词的格式化、自动提交或光标跳转。
