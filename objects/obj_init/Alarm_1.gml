/// @desc Set title room data
if (global.show_notice) instance_destroy(disclaimer);

buttons_exist = true;

audio_stop_all();
var menu_music = audio_emitter_create();
audio_emitter_gain(menu_music, global.volume_music);

logo = instance_create_depth(room_width / 2, room_height - 500, 0, obj_effect_renderer);
logo.effect = effects.logo;
button_changelog = create_button(global.git_tag, display_get_gui_width() / 2, 260, 240, 30, false, c_rainbow, false);
button_play = create_button("Play", display_get_gui_width() / 2, display_get_gui_height() - 150, 120, 30, false, c_rainbow, false);
//button_settings = create_button("Settings", display_get_gui_width() / 2, display_get_gui_height() - 20, 120, 30, false, c_rainbow, false);
button_quit = create_button("Quit", display_get_gui_width() / 2, display_get_gui_height() - 100, 120, 30, false, c_rainbow, false);

alarm[1] = -1;