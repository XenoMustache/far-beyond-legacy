draw_self();
switch (loot) {
	case loot_types.sm_hp: led_effect.image_blend = make_color_rgb(255,32,32);
	break;
	case loot_types.life: led_effect.image_blend = make_color_rgb(211,96,32);
	break;
}