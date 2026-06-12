# entities/items/
# 物品实体（可拾取/装备/使用）
#
# 物品分为四大类：
#   weapons/     — 武器（剑/斧/矛/弓/杖）
#   armor/       — 防具（头盔/铠甲/护手/护腿/盾牌）
#   consumables/ — 消耗品（血瓶/投掷物/临时 Buff）
#   key_items/   — 关键道具（钥匙/任务物品）
#
# 每个具体物品 = 一个 .tres (ItemData Resource) + 一个 .tscn (世界中的拾取物模型)
# ItemData 定义物品属性（伤害/防御/重量/价格/描述）
# .tscn 只是一个 3D 模型 + components/world/interaction 组件
