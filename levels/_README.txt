# levels/
#
# 关卡/地图场景
# 每个关卡一个子目录，含该关卡的 .tscn 和 .gd
# 关卡 .gd 负责：关卡特有逻辑（机关、事件脚本）、
#              引用 entities 和 components 实例化场景内容
#
# _shared/ — 多个关卡共用的资源（NavMesh 模板、天空盒、后处理预设）
