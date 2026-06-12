# components/combat/posture/
# 架势/格挡槽（Sekiro 风格）
#
# 职责：格挡成功时累积 posture，posture 满 → 体崩 → 处决窗口
#       posture 持续不格挡时自动衰退
#       与 poise 不同：posture 是进攻性防御，poise 是被动霸体
#
# 配置：@export max_posture, decay_rate, block_reduction_ratio
# 信号：posture_broken（处决窗口开启）
