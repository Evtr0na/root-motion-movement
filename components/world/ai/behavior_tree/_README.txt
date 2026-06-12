# components/world/ai/behavior_tree/
# 行为树
#
# 职责：敌人的决策引擎
#       典型树结构: Selector
#                     ├─ Sequence [战斗]
#                     │   ├─ 玩家在攻击距离内?
#                     │   ├─ 选择攻击动作（轻击/重击/战技）
#                     │   └─ 执行 ->
#                     ├─ Sequence [追击]
#                     │   ├─ 玩家在感知范围内?
#                     │   ├─ 移动到玩家位置
#                     │   └─ 面向玩家
#                     └─ Sequence [巡逻]
#                         ├─ 按路径点移动
#                         └─ 到达后随机等待
#
# 配置：每个敌人有自己的 BehaviorTree Resource (.tres)
#       可在编辑器中通过可视化工具或 Resource 拖放配置
# 输出：行为决策通过信号发给状态机
