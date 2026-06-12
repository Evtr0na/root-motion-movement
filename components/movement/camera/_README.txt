# components/movement/camera/
# 第三人称相机组件
#
# 职责：鼠标控制旋转、水平/垂直 pivot、SpringArm 距离、延迟跟随
# 输入：鼠标移动事件、被跟随目标的 global_position
# 输出：通过 signal 暴露当前相机朝向（供 Player 计算移动方向用）
# 配置：@export mouse_sensitivity, decay, follow_offset, collision_mask
# 依赖：无（仅依赖传入的 target 引用）
#
# 可在多个角色间切换跟随目标（锁定切换、换人等功能通过此接口实现）
