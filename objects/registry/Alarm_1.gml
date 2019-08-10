if (global.show_notice) instance_destroy(disclaimer);
buttons_exist = true;
audio_stop_all();
var menu_music = audio_emitter_create();
audio_emitter_gain(menu_music, global.volume_music);
button_changelog = create_button(global.git_tag, display_get_gui_width() / 2, 50, 2);
button_play = create_button("Play", 200, display_get_gui_height() - 50, 1);
button_settings = create_button("Settings", display_get_gui_width() / 2, display_get_gui_height() - 50, 1);
button_quit = create_button("Quit", display_get_gui_width() - 200, display_get_gui_height() - 50, 1);
logo = instance_create_depth(room_width / 2, room_height / 2, 0, obj_effect_renderer);
logo.effect = effects.logo;
alarm[1] = -1;