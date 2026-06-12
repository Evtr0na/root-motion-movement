# ============================================================
#  Root Motion Movement — 项目根目录
# ============================================================
#
# 魂系游戏学习项目。所有组件均可通过简单设置组合、互相解耦。
#
# 顶层目录导航:
#
#   Asset/         原始资源（模型、动画、贴图、音频、材质）
#   components/    通用游戏组件（纯功能模块，可在任何项目复用）
#       movement/   角色运动（camera, root_motion, input_buffer, dodge, sprint）
#       combat/     战斗系统（state_machine, hitbox, hurtbox, lock_on, damage,
#                   poise, posture, parry, guard, weapon_art）
#       character/  角色属性（stamina, health, attributes, equipment_load,
#                   status_effect, leveling）
#       world/      世界交互（spawner, checkpoint, fog_wall, death_recovery,
#                   interaction, ai, patrol, navigation）
#       ui/         界面（hud, status_bars, damage_number, boss_health,
#                   inventory_screen, equipment_screen, dialogue,
#                   pickup_prompt, loading_screen, main_menu）
#   entities/      具体游戏实体（player, enemies, npc, items）
#   systems/       全局系统 Autoload（event_bus, audio_manager,
#                  scene_manager, save_manager, game_state, input_manager）
#   levels/        关卡/地图（test_level, arena_level）
#
# 依赖方向（单向，禁止反向）:
#   Asset → components → entities → levels
#   systems 和 ui 横切，但不反向依赖 entities 或 levels
#
# 组件通信：
#   组件间 → 通过信号（signal）
#   跨实体 → 通过 systems/event_bus
#   配置注入 → 通过 @export + Resource (.tres)
#   不使用的 → find_child / 硬编码路径 / 直接属性修改
# ============================================================
