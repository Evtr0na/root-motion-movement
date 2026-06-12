# components/combat/hitbox/
# 攻击判定框
#
# 职责：挂在武器/角色上的 Area3D，在攻击动画的特定帧激活
#       碰触到 Hurtbox → 携带 AttackData 发出信号
#
# 配置：@export attack_data (Resource), active_frames (由状态机/动画事件控制)
# 信号：hit_detected(target_node, attack_data)
#
# 与 Hurtbox 的关系：Hitbox 只负责"检测到了"，damage 组件负责"造成多少伤害"
