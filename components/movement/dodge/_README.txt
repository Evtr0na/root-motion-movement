# components/movement/dodge/
# 翻滚/闪避
#
# 职责：处理翻滚的状态逻辑（方向判定、无敌帧计时、stamina消耗检查）
# 配置：@export iframe_duration, stamina_cost, dodge_distance
# 依赖：stamina 组件（询问是否够精力）、input_buffer（接收翻滚指令）
#       状态机（从 DodgeState 中调用此组件的方法）
# signals: dodge_started, dodge_ended, iframes_active, iframes_ended
