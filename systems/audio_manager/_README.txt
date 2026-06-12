# systems/audio_manager/
# 音频管理 Autoload
#
# 职责：管理所有音效和背景音乐的播放
#       SFX 池管理（避免同时播放过多音效 → 限制并发数）
#       材质脚步声检测（不同地面 → 不同脚步声）
#       BGM 切换（普通 → Boss 战，区域过渡淡入淡出）
#
# 接口：play_sfx(sfx_id, position), play_bgm(bgm_id), stop_bgm(fade_time)
