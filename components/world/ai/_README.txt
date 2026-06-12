# components/world/ai/
# AI 系统
#
# 职责：控制敌人/NPC 的行为——如何决策、如何感知周围
#       分为两个子模块: behavior_tree (决策) + sensing (感知)
#       AI 输出动作指令，不直接操作动画/移动——通过状态机或 movement 组件执行
#
# 设计原则: AI 系统是"一个发出信号的组件"
#           输入: 感知数据（玩家位置、声音事件、视线）
#           输出: 行为决策信号 → 状态机处理 → movement/combat 执行
