# systems/game_state/
# 游戏状态管理 Autoload
#
# 职责：跟踪全局游戏状态（主菜单 / 游戏中 / 暂停 / 过场 / 死亡中）
#       各组件根据状态决定是否处理输入/更新
#       管理全局时间缩放（慢动作/时停效果）
#
# 状态 enum：MAIN_MENU, LOADING, PLAYING, PAUSED, CUTSCENE, DEAD, DIALOGUE
