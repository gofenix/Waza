# Design Tokens

当同类 spacing、size、radius、color 被重复调参时，用 token 收拢。

## Spacing

- 外层容器 padding 默认和内部 gap 同源。
- 常用阶梯：4、8、12、16、24、32、48。
- 同一组件内不要出现多个只差 1 到 2px 的 magic value。
- 如果调了三轮还不顺，先减少独立变量，再讨论具体数值。

## Typography

- 工具栏、状态栏、列表项里的切换状态使用同一字号。
- 用 weight、color、opacity、icon 区分状态，不用字号。
- 中文正文行高通常比英文略松。
- 长按钮文案要允许换行、压缩布局或改短 copy，不靠 viewport font-size。

## Radius

- 普通 card 默认 8px 或更小，除非项目设计系统另有规定。
- 圆角越大，信息密度越低。工具型界面慎用大圆角。

## Color

- 每个 token 要有职责：background、surface、border、text、muted、accent、danger、success。
- 不要让 accent 同时承担所有强调、状态和装饰。
- 交互状态的对比度必须可辨。

## Motion

- 动效先服务状态理解。
- 不用速度掩盖布局抖动。
- 同一交互族保持一致的 duration 和 easing。
