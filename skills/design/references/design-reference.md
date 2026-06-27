# Design Reference

这是 `/design` 的完整参考。需要做较大界面设计或截图迭代时读取。

## Build With Empathy

- 先理解用户和使用场景。工具型产品要安静、高密度、可重复操作；游戏和创意界面可以更表现性。
- 现有设计系统优先。读组件、token、图标库和页面惯例，不要凭空发明风格。
- 第一屏应是可用体验，不是营销介绍，除非用户明确要 landing page。
- 常见工作流必须顺手：进入、编辑、保存、回退、失败、空状态都要完整。

## Control Choice

- 工具按钮用图标，优先 lucide 或项目已有图标库。
- 模式用 segmented control，二元状态用 toggle/checkbox。
- 数字用 slider、stepper 或 input。
- 多选项用 menu 或 tabs。
- 不熟悉图标要有 tooltip。

## Layout

- 固定格式元素要有稳定尺寸：board、grid、toolbar、icon button、counter、tile。
- 不做 card inside card。
- 页面 section 是 full-width band 或无框布局；卡片只用于重复项、modal 或真正需要 frame 的工具。
- 文本不能覆盖前后内容，长词不能挤出容器。
- 不用 viewport width 缩放字号。

## Visual System

- 字体大小和容器匹配：hero 才用 hero 级字号，工具面板用紧凑 heading。
- letter spacing 默认 0，不用负值。
- 限制单一色相大面积使用，尤其避免整页紫/蓝紫、米色、深蓝、棕橙。
- Hover、active、focus、disabled、loading、empty、error 都要设计。
- 图像要揭示真实产品、地点、对象、状态或玩法，不用模糊 stock 感氛围图。

## Hero Rules

只有真正需要 landing page 时才做 hero。Hero 要用相关真实图片、生成位图或沉浸式交互背景，文字叠在背景上，不放卡片里。第一屏必须露出下一 section 的一点内容。

品牌、产品、地点、人物页面，第一屏必须明确显示主体，不要只放在 nav 小字里。

## 3D Rules

3D 用 Three.js。主 3D 场景全幅或无框，不放在装饰卡片里。完成前用浏览器截图和 canvas pixel 检查：非空、构图正确、会动或可交互、资源加载成功、桌面和移动都不重叠。

## Redesign Order

已有产品先小步提升：

1. 字体替换或字体尺度。
2. 颜色清理。
3. hover/active/focus 状态。
4. 布局和留白。
5. 替换 generic 组件。
6. loading/empty/error。
7. 细节排印。

这个顺序能减少 blast radius。
