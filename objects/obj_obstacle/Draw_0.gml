switch (obstacle_type) {
	case "sm_asteroid_fg":
		image_index = registry.spr_obstacle_fg;
		sprite_index = random_range(0, 1);
	break;
	case "sm_asteroid_bg":
		image_index = registry.spr_obstacle_bg;
		sprite_index = random_range(0, 1);
	break;
}