# components/world/navigation/
# 导航/寻路
#
# 职责：封装 NavigationAgent3D 的使用，让 AI 和角色可以请求路径
#       处理: 获取路径、跟随路径移动、到达判定
#
# 注：这不同于关卡中的 NavigationRegion3D。NavigationRegion 是关卡几何，
#     本组件是运行在角色/AI 节点上的导航逻辑封装
