# components/ui/boss_health/
# Boss 血条
#
# 职责：屏幕顶部或底部的 Boss 专属大血条
#       Boss 名称显示、阶段切换标志（phase 2 等）
#       仅在 Boss 战中可见
#
# 信号订阅：lock_on.target_locked → 检查是否是 boss → 显示
