# systems/
#
# 全局系统 Autoload + 服务 — 横切整个项目的单例
# 这些在 project.godot 的 [autoload] 中注册，全局可用
#
# 规则：
#   1. 所有 Autoload 必须在 project.godot 中显式列出
#   2. Autoload 之间禁止循环依赖
#   3. Autoload 不存储场景临时状态（每次 _ready() 重置）
#   4. Autoload 数量控制在 5-8 个以内
#   5. 组件不直接调用 Autoload（由 entities 层做桥接）
