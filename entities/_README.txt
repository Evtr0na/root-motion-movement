# entities/
#
# 游戏实体 — 具体的角色/敌人/NPC/物品的场景和脚本
# 与 components/ 的区别：
#   components/ — 通用功能模块（可在任何项目复用）
#   entities/   — 本项目特有的游戏对象（组合 components 造出来的"车"）
#
# 每个实体的 .tscn 是最终可放入关卡的预制体
# 其根节点脚本负责：组合 components 子节点 + 配置具体参数 + 处理实体特有逻辑
