# CrT脚本内容

`clazz/mods` -> 用于将其他模组已注册的`recipetype`转换成可以被直接使用的类(类似1.12.2时期的方法)

`clazz/utils` -> 用于`clazz/mods`的工具类

`events` -> CrT注册的事件

`loots` -> CrT战利品表处理

`recipes` -> 合成配方

`register` -> CrT注册（当前仅MEK写了兼容）以及其他杂项（例如村民交易）

`tags` -> 标签处理

# CrT加载优先级

`2000` -> 使用zs编写的工具类加载(`./clazz/utils`)

`1000` -> 使用zs编写的类加载(`./clazz/mods`)

`727` -> LycheeTweaker加载(`./clazz/mods/LycheeTweaker`)

`500` -> 标签处理

`100` -> 移除lychee自带的测试用配方

`0/默认` -> 配方/事件加载