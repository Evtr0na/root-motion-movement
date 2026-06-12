# components/world/spawner/
# 区域随机生成器（你已实现）
#
# 职责：在指定区域内随机生成对象，基于 NavMesh 确保生成在可行走位置
# 配置：@export item_scenes (Array[PackedScene]), area (MeshInstance3D), nav_region
# 触发：外部调用 spawn(count) 方法或信号触发
#
# 当前改进方向：
#   - 生成触发逻辑（按键/事件/关卡进入）应与生成逻辑分离
#   - @export nav_region: NavigationRegion3D 替代硬编码路径
