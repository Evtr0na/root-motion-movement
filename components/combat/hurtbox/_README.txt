# components/combat/hurtbox/
# 受击判定框
#
# 职责：挂在角色身体关键部位（头/胸/腿）的 Area3D，承受 Hitbox 碰撞
#       不同部位的 hurtbox 可以有不同的受击倍率
#       头部: 1.5x 伤害，腿部: 0.7x
#
# 配置：@export damage_multiplier, body_part (enum)
# 信号：was_hit(attack_data, hitbox_node)
#
# 由 entities/ 下的角色实例化时挂载到骨骼对应位置
