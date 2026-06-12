# components/character/status_effect/
# 异常状态/ Buff Debuff 系统
#
# 职责：管理所有临时状态效果
#       出血/剧毒/冰冻/诅咒/中毒 → 累积条 → 触发效果
#       增益（黄金树立誓、金石之誓）
#       减益（降低攻击力、移动减速）
#
# 架构：StatusEffectData Resource 定义效果模板
#       StatusEffectManager 维护当前活跃效果列表和累积条
#
# 配置：每个效果有 duration, tick_interval, effect_type, damage_per_tick, buildup_rate
# 信号：effect_applied(data), effect_removed(data), buildup_threshold_reached
