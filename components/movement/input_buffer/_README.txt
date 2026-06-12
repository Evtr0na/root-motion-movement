# components/movement/input_buffer/
# 输入缓冲/预输入
#
# 魂系手感的关键组件。
# 职责：将玩家按键存储在一个时间窗口中（0.1s-0.5s可配），
#       到窗口结束时或动画可取消时才"提交"最近一次输入。
# 为什么：翻滚/硬直中按攻击 → 翻滚结束自动出刀，不丢指令
#
# @export: buffer_window (秒), max_queue_size
# signals: action_committed(action_name)
