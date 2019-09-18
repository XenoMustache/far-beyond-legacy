for (var i = 0; i < grid_width; i++) {
	for (var j = 0; i < grid_height; i++) {
		ds_list_destroy(map_grid[# i, j]);
	}
}
ds_grid_destroy(map_grid);