# components/combat/lock_on/
# 锁定目标系统
#
# 职责：锁定最近（或可配置角度内）敌人，相机绕目标旋转
#       角色自动面朝锁定目标，输入方向变为相对于锁定目标
#
# 配置：@export lock_range, lock_cone_angle, auto_switch_on_kill
# 信号：target_locked(target), target_switched(new_target), target_lost
#
# 依赖：camera 组件（修改相机旋转基准）
#       无直接依赖——通过信号与相机、UI（指 standard_bars/boss_health）解耦
