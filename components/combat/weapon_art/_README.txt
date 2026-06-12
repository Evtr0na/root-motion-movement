# components/combat/weapon_art/
# 战技/武器特殊技
#
# 职责：处理需要特殊逻辑的武器动作（不是单纯的伤害判定）
#       例如：滑步斩、蓄力斩、战吼 buff、转换形态
#       关联到 weapon_data Resource 里的特殊技定义
#
# 配置：@export weapon_art_name, fp_cost (如果是法环式)
# 信号：weapon_art_activated, weapon_art_ended
#
# 注：简单武器艺术可能不需要独立组件，复杂时可在此扩展
