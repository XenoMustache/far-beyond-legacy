do_cleanup = true;
cell_size = 64;
grid_width = room_width / cell_size;
grid_height = room_height / cell_size;
map_grid = ds_grid_create(grid_width, grid_height);
for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		var tile_type;
		map_grid[# i, j] = ds_list_create();
		if (weighted_chance(0.8)) tile_type = "grass"
		else tile_type = "dirt";
		ds_list_set(map_grid[# i, j], 1, tile_type);
		if (tile_type == "grass")
			ds_list_set(map_grid[# i, j], 2, 2);
		if (tile_type == "dirt")
			ds_list_set(map_grid[# i, j], 2, 0);
	}
}
alarm[0] = 1;
alarm[2] = 2;