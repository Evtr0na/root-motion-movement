# components/ui/hud/
# HUD 基础框架
#
# 职责：屏幕常驻 UI 的容器和管理器
#       管理血条、精力条、道具快捷栏、锁定目标名称 的布局
#       处理 UI 元素的显示/隐藏、动画过渡
#
# 配置：@export show_in_combat_only, opacity_when_exploring
#       包含子节点：health_bar, stamina_bar, item_quick_bar, lock_on_display
