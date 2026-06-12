# components/movement/
#
# 角色运动层 — 控制角色"怎么动"
# 所有组件通过 @export 变量暴露配置，不直接知晓彼此的存在
#
# 层级关系：
#   input_buffer → 缓存玩家输入（防吞指令，魂系手感核心）
#   sprint       → 在读 input_buffer 后决定走还是跑
#   dodge        → 翻滚/滑步（带无敌帧、取消窗口）
#   root_motion  → 动画 Root Bone 驱动位移（不用代码移动，位移来自动画）
#   camera       → 第三人称相机（只负责镜头旋转和跟随，不关心谁在动）
