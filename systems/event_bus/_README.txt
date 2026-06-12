# systems/event_bus/
# 事件总线（信号中心 Autoload）
#
# 职责：一个全局单例，只定义和发出信号，不存储任何状态
#       所有系统级事件通过此总线广播，解耦发送者和接收者
#
# 为什么需要：
#   Camera 需要通知 HUD "锁定目标切换了"
#   Health 需要通知 HUD "血量变了"
#   Checkpoint 需要通知 Spawner "重置所有敌人"
#   如果每个组件直接引用对方，依赖会爆炸。EventBus 是中间人。
#
# 示例信号定义：
#   signal target_locked(target)
#   signal health_changed(entity, current, max)
#   signal enemy_killed(enemy, killer)
#   signal checkpoint_rested(checkpoint_id)
#   signal game_saved
#   signal game_loaded
