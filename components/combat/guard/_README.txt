# components/combat/guard/
# 防御/格挡
#
# 职责：举盾状态逻辑——削减伤害、消耗精力、弹刀效果
#       根据盾牌类型决定削减率（小盾 70%，中盾 100% 物理）
#       精力被砍光 → 破防进入大硬直
#
# 配置：@export damage_reduction_percent, stamina_block_cost, guard_break_threshold
# 依赖：stamina 组件
