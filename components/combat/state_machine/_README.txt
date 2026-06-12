# components/combat/state_machine/
# 通用有限状态机
#
# 魂系战斗的基础——所有动作都是状态，状态定义：
#   - 能否被打断（可取消/不可取消）
#   - 是否消耗精力
#   - 是否有无敌帧
#   - 过渡到其他状态的条件
#
# 结构：StateMachine.gd（管理类） + State.gd（基类）
# 每个具体状态继承 State 实现 enter()/process()/handle_input()/exit()
#
# 典型玩家状态：Idle / Walk / Run / Sprint / Dodge / Jump /
#             LightAttack / HeavyAttack / WeaponArt / Guard / Parry /
#             Stagger / Knockdown / Death
#
# 每个状态只负责自己的逻辑和过渡条件，不处理跨状态的副作用
