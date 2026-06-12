# components/character/equipment_load/
# 负重系统
#
# 职责：计算总装备重量 / 最大负重 = 负重率
#       轻装 (< 30%): 最快翻滚 + 最长无敌帧 + 最快精力回复
#       中装 (30-70%): 标准翻滚
#       重装 (> 70%): 笨重翻滚（屁股着地）
#       (> 100%): 无法翻滚，只能走路
#
# 配置：@export max_load（由耐力属性计算）
#       读入所有已装备的物品重量求和
# 信号：load_changed(ratio, tier)
#
# 注：影响 dodge 组件和 stamina 恢复速率
