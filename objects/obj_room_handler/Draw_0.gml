for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		var tile_type = ds_list_find_value(map_grid[# i, j], 1);
		if (tile_type == "grass") {
			var tile_sprite = ds_list_find_value(map_grid[# i, j], 2);
			draw_sprite_ext(spr_tiles, tile_sprite, i * cell_size, j * cell_size, 4, 4, image_angle, c_white, 1);
		}
		if (tile_type == "dirt") {
			var tile_sprite = ds_list_find_value(map_grid[# i, j], 2);
			draw_sprite_ext(spr_tiles, tile_sprite, i * cell_size, j * cell_size, 4, 4, image_angle, c_white, 1);
		}
	}
}