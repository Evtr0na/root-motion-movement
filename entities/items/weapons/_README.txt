# entities/items/weapons/
# 武器
#
# 每个武器 = weapon_name.tres (WeaponData Resource)
#           + weapon_name.tscn (挂在角色骨骼上的武器模型场景)
#
# WeaponData Resource 字段示例:
#   weapon_name: "Longsword"
#   weapon_type: WeaponType.STRAIGHT_SWORD
#   base_damage: 110
#   damage_type: DamageType.SLASH
#   scaling: { STR: C, DEX: C, INT: -, FAI: - }
#   stamina_cost: 25
#   poise_damage: 30
#   weight: 3.0
#   moveset: ["light_1", "light_2", "heavy_1", "weapon_art", "roll_attack"]
#   weapon_art: Stance  # 战技名称
#   weapon_scene: PackedScene  # 挂在骨骼上的模型
#
# 武器类型 enum:
#   DAGGER, STRAIGHT_SWORD, GREATSWORD, ULTRA_GREATSWORD,
#   CURVED_SWORD, KATANA, THRUSTING_SWORD, AXE,
#   GREAT_AXE, HAMMER, GREAT_HAMMER, SPEAR, HALBERD,
#   BOW, CROSSBOW, STAFF, TALISMAN
