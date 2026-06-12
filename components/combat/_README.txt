# components/combat/
#
# 战斗层 — 所有"打与被打"的组件
# 核心架构：Hitbox（攻击） + Hurtbox（受击） + 计算层（damage/poise/guard）
# 三者通过 Area3D 的碰撞检测 + 信号传递数据
#
# 流程：武器 Hitbox 命中敌人 Hurtbox → 信号携带 AttackData Resource →
#       damage 计算最终伤害 → poise 计算削刃 → status_effect 检查异常触发
