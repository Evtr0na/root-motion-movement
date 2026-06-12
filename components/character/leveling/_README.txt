# components/character/leveling/
# 升级/属性点分配
#
# 职责：经验值获取 → 升级 → 获得可分配属性点
#       玩家手动分配属性点到各 Attribute
#       升级曲线（魂币/卢恩消耗）
#
# 配置：@export level_curve Resource（每级所需经验/魂量）
#       存于 save_manager，由 entities/player 使用
