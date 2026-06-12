# components/world/death_recovery/
# 死亡/丢魂/捡魂
#
# 职责：角色死亡时掉落当前持有的魂量到死亡位置
#       重生后自动生成一个"血迹"交互物在死亡位置
#       再次死亡前未捡起 → 魂永久消失
#
# 配置：@export bloodstain_scene (血迹模型 PackedScene)
# 信号：souls_dropped(amount, position), souls_recovered
#
# 依赖：leveling 组件（读取当前魂量）
#       与 checkpoint 协同（知道重生点在哪）
