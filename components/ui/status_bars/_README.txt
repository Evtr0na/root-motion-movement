# components/ui/status_bars/
# 状态条通用组件（可配置复用）
#
# 职责：一个通用的进度条组件，可用于血条/精力条/boss血条等
#       带平滑过渡动画、颜色变化（低值警告）
#       通过 @export Resource 配置外观
#
# 配置：@export bar_color (normal, warning, danger 三色)
#       @export animation_speed
#       外部通过 set_value(current, max) 方法更新
