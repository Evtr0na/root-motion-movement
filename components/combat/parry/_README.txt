# components/combat/parry/
# 弹反系统
#
# 职责：检测弹反输入窗口（前 0.2-0.5s 内），
#       弹反成功 → 敌人进入硬直 → 可触发处决动画
#       弹反失败 → 本应承受的伤害加倍或直接硬直
#
# 配置：@export parry_window (秒), active_frames, riposte_enabled
# 信号：parry_success, parry_fail, riposte_available
#
# 依赖：hurtbox（弹反窗口内 hurtbox 碰撞视为成功）
