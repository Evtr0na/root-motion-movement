# components/combat/damage/
# 伤害计算器
#
# 职责：纯逻辑类（不挂场景树）。接收 AttackData + DefenseData → 计算最终伤害
#       处理：攻击力/防御力/属性加成的公式计算
#       返回：最终伤害值、伤害类型、是否触发处决窗口
#
# 单位类型：class_name DamageCalculator, extends RefCounted
# 不是 Node —— 纯逻辑不需要 _process
#
# 公式可配置（可替换不同的 damage_formula Resource）
