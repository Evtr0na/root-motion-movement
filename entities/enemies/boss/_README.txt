# entities/enemies/boss/
# Boss 敌人
#
# 每个 Boss 一个独立子目录，包含：
#   boss_name.tscn     — Boss 场景
#   boss_name.gd       — Boss 特有脚本（阶段切换/特殊机制）
#   boss_name_stats.tres — Boss 属性
#   boss_name_bgm.tres   — Boss BGM 引用（如有）
#
# Boss 独特需求：
#   - 多阶段战斗（HP 阈值触发阶段切换）
#   - 特殊攻击（场地 AOE、召唤小兵、弹幕）
#   - 雾门联动（由 components/world/fog_wall 触发）
#   - Boss 血条（components/ui/boss_health）
#   - 战斗区域锁定（Boss 战中不能离开特定区域）
