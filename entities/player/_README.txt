# entities/player/
# 玩家角色
#
# 场景构成（Player.tscn）:
#   CharacterBody3D (Player.gd)
#   ├── AnimationLibrary_Godot_Standard (模型 + AnimationTree)
#   ├── CollisionShape3D
#   ├── [component] camera (instance of components/movement/camera/)
#   ├── [component] state_machine (instance of components/combat/state_machine/)
#   ├── [component] hitbox (挂在武器骨骼下)
#   ├── [component] hurtbox × N (挂头部/胸部/腿部骨骼)
#   ├── [component] health
#   ├── [component] stamina
#   ├── [component] attributes
#   ├── [component] equipment_load
#   ├── [component] poise
#   ├── [component] input_buffer
#   ├── [component] dodge
#   ├── [component] guard
#   └── [component] lock_on
#
# Player.gd 的职责：
#   - 组合所有 components 子节点
#   - 配置具体参数（编辑器 Inspector）
#   - 处理玩家特有的逻辑（输入映射到组件调用）
#   - 不包含任何通用逻辑——通用逻辑都在 components 里
