# components/ui/damage_number/
# 伤害数字弹出
#
# 职责：受击时在角色上方弹出伤害数字
#       不同伤害类型显示不同颜色（物理白色、火红、雷黄、魔法蓝、暴击大号）
#       自动飘上升 + 淡出
#
# 配置：@export float_speed, fade_duration, random_offset_range
#       由 hurtbox.was_hit 信号触发
