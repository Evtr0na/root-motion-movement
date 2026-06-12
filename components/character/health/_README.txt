# components/character/health/
# 生命值系统
#
# 职责：HP 管理、死亡检测、无敌帧（受击后短暂无敌避免连续受伤）
#       支持敌人/玩家复用（玩家掉血 UI 通过信号驱动）
#
# 配置：@export max_hp, invincibility_after_hit (秒)
# 信号：health_changed(current, max), damaged(amount, type), died, invincibility_started/ended
