# components/world/fog_wall/
# 雾门 — Boss 房间入口屏障
#
# 职责：进入雾门 → 触发 Boss 战 → 雾门关闭（无法退出逃跑）
#       Boss 死亡 → 雾门永久消失
#       第一次进入前可见白雾/黄雾
#
# 配置：@export linked_boss (NodePath), one_way_only, boss_defeated_key (save ID)
# 信号：player_entered, boss_started
