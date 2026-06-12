# components/world/interaction/
# 通用交互系统
#
# 职责：可交互对象基类——捡起物品、打开门、拉动拉杆、对话 NPC
#       提供一个统一的交互接口，不同对象继承/配置
#
# 配置：@export interact_text (提示文字), interact_range, one_shot (是否一次性)
#       interaction_type (enum: Pickup, Lever, Door, Chest, NPC)
# 信号：interacted(by_node)
