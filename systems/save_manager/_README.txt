# systems/save_manager/
# 存档管理 Autoload
#
# 职责：保存/加载游戏进度
#       存档内容：玩家属性、装备、物品、篝火位置、Boss 击杀记录、NPC 任务状态
#       多存档槽位
#       防作弊/校验（可选）
#
# 接口：save(slot), load(slot), delete_save(slot), get_save_list()
