# components/character/attributes/
# 角色基础属性
#
# 职责：存储和管理角色基础属性（力量/敏捷/智力/信仰等）
#       属性影响伤害计算、装备需求、法术要求
#       本身不参与任何计算——只存储和提供数据
#
# 配置：AttributeData Resource (.tres) —— 每级/每职业一份
#       vigor, endurance, strength, dexterity, intelligence, faith, arcane 等
#       @export var base_attributes: AttributeData
#
# 与 damage 的关系：damage 计算器调用 attributes.get_scaling(weapon_type) 获取加成
