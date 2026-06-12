# systems/scene_manager/
# 场景切换管理 Autoload
#
# 职责：处理关卡/场景的加载和卸载
#       异步加载（显示 loading_screen）
#       场景切换时的数据传输（玩家状态、传送到哪个篝火）
#       管理子场景的 add/remove（Boss 战区域动态加载）
#
# 接口：load_level(level_path), reload_current(), load_additive(scene_path)
