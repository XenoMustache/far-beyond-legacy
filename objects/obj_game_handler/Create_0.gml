var rm = room_get_name(room);
switch (rm) {
	case "rm_init":
		global.debug_info = true;
		randomize();
		window_set_caption("Far Beyond Character Test");
		room_goto_next();
	break;
	case "rm_title":
	break;
	case "rm_testing":
		instance_create_depth(0, 0, 0, obj_hud_handler);
		instance_create_depth(room_width div 2, room_height div 2, 0, obj_player);
		instance_create_depth(room_width div 2, room_height div 2, 0, obj_room_handler);
	break;
	case "rm_sandbox":
	break;
}