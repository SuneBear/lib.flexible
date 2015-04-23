#lib.flexible

移动端文字自适应方案

## 使用方法

建议对于js做`内敛处理`，在**所有资源加载之前**执行这个js。

执行这个js后，会在`html`（也就是document.documentElement）上增加一个`font-size`样式。

之后页面中的元素，都可以用rem单位来设置。`html`上的`font-size`就是rem的基准像素。
