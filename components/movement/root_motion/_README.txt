# components/movement/root_motion/
# Root Motion 动画驱动位移
#
# 职责：从 AnimationTree 的 root_motion_track 提取位移/旋转并应用到角色
# 为什么需要：魂系角色移动来源于动画数据（拔刀迈步、翻滚位移），
#             而非代码写的 lerp/slerp。这样手感才有"重量感"
# 输入：AnimationTree 的 root motion 数据
# 输出：每帧位移向量 + 旋转，交给调用者 apply
#
# 注：这个组件只负责提取数据，不负责物理（不与CharacterBody直接耦合）
