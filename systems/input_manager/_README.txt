# systems/input_manager/
# 输入管理 Autoload
#
# 职责：统一处理输入，支持键位重绑定（键盘/手柄）
#       输入优先级管理（暂停时禁用移动，过场时禁用全部）
#       输入提示显示（按键图标根据设备自动切换）
#
# 接口：is_action(action_name), get_vector(actions), rebind(action, key)
