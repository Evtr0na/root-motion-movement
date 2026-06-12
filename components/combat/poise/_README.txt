# components/combat/poise/
# 韧性/削刃系统（Dark Souls 经典机制）
#
# 职责：每个角色有一个 poise 值。被击中时 poise 被 attack_data.poise_damage 削减
#       poise 归零 → 角色被打出硬直动画（Stagger）
#       poise 在未受击 X 秒后自动恢复满
#
# 配置：@export max_poise, recovery_delay, recovery_rate
# 信号：poise_broken, poise_recovered
#
# 注：与 posture（架势/只狼）的区别——poise 是霸体值，posture 是格挡消耗槽
