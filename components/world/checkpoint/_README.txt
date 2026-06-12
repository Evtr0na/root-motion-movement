# components/world/checkpoint/
# 篝火/祝福/赐福 — 魂系核心节点
#
# 职责：休息/传送/升级/回复血瓶/刷新地图
#       被敌人攻击时短暂不可交互
#       死亡后在此重生
#
# 配置：@export checkpoint_id, connected_checkpoints (Array[int])
#       @export rest_animation, kindle_level
# 信号：rested（回复全部、重置敌人）、warped(to_id)、enemies_reset
#
# 依赖：save_manager（保存当前篝火位置）
#       与 death_recovery 协同工作（死后回到此位置）
