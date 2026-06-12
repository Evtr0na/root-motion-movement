# components/world/patrol/
# 巡逻路径
#
# 职责：定义巡逻路线（路点数组），在 behavior_tree 的巡逻节点被激活时执行
#       支持: 循环/往返/随机巡逻
#
# 配置：@export waypoints (Array[Node3D] or Array[Vector3]),
#       mode: loop / pingpong / random
# 信号：waypoint_reached(index)
