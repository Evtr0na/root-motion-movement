# components/world/ai/sensing/
# AI 感知系统
#
# 职责：检测玩家——视线（射线检测）、听觉（声音事件范围）、距离
#       魂系敌人行为高度依赖感知状态：
#       - 未察觉 → 巡逻/站立
#       - 察觉/可疑 → 警戒走向最后已知位置
#       - 战斗中 → 追击+攻击
#
# 配置：@export sight_range, sight_cone_angle, hearing_range, detection_time
# 信号：player_detected, player_lost, sound_heard(position)
