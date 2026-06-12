# components/character/stamina/
# 精力系统
#
# 职责：精力消耗/恢复逻辑。攻击/翻滚/奔跑/格挡都检查 stamina
#       精力不足时动作被拒绝（返回 false）
#       归零后有一个短暂惩罚延迟再开始恢复
#
# 配置：@export max_stamina, regen_per_second, regen_delay, penalty_delay
# 信号：stamina_changed(current, max), stamina_depleted, stamina_full
