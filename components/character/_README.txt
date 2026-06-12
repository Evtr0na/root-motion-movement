# components/character/
#
# 角色属性层 — 所有数值属性系统
# 这些组件不挂场景树也可工作（RefCounted 或简 Node），
# 但通常挂在角色根节点上便于编辑器配置
#
# 核心规则：每个属性组件只管理一种属性，通过 Resource (.tres) 做数据模板
#          例如：不同职业有不同的 stamina_stats.tres，同一套 stamina.gd 代码驱动
