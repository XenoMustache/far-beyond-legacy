for (var i = 1; i < grid_width - 1; i++) {
	for (var j = 1; j < grid_height - 1; j++) {
		var north = ds_list_find_value(map_grid[# i, j - 1], 1);
		var south = ds_list_find_value(map_grid[# i, j + 1], 1);
		var east = ds_list_find_value(map_grid[# i + 1, j], 1);
		var west = ds_list_find_value(map_grid[# i - 1, j], 1);
		var northeast = ds_list_find_value(map_grid[# i + 1, j - 1], 1);
		var southeast = ds_list_find_value(map_grid[# i + 1, j + 1], 1);
		var southwest = ds_list_find_value(map_grid[# i - 1, j + 1], 1);
		var northwest = ds_list_find_value(map_grid[# i - 1, j - 1], 1);
		var tile_type = ds_list_find_value(map_grid[# i, j], 1);
		var tile_sprite;
		if (tile_type = "grass") {
			if (north == "dirt" && south == "grass" && east == "grass" && west == "grass" && southeast == "grass" && southwest == "grass") { 
				tile_sprite = 11; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "dirt" && east == "grass" && west == "grass" && northeast == "grass" && northwest == "grass") { 
				tile_sprite = 6; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "dirt" && west == "grass" && northwest == "grass" && southwest == "grass") { 
				tile_sprite = 8; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "grass" && west == "dirt" && northeast == "grass" && southeast == "grass") { 
				tile_sprite = 9; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && east == "dirt" && west == "grass" && northwest == "grass") { 
				tile_sprite = 18; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "dirt" && west == "grass" && northwest == "grass") { 
				tile_sprite = 18; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (south == "grass" && east == "grass" && west == "dirt" && southeast == "grass") {
				tile_sprite = 14; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (south == "grass" && east == "grass" && north == "dirt" && southeast == "grass") {
				tile_sprite = 14; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "dirt" && east == "grass" && northeast == "grass") {
				tile_sprite = 17;
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && west == "dirt" && east == "grass" && northeast == "grass") {
				tile_sprite = 17;
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "dirt" && south == "grass" && west == "grass" && southwest == "grass") {
				tile_sprite = 15; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (east == "dirt" && south == "grass" && west == "grass" && southwest == "grass") {
				tile_sprite = 15; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "grass" && west == "grass" && southwest == "dirt" && northeast == "dirt" && northwest == "grass" && southeast == "grass") { 
				tile_sprite = 20; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "grass" && west == "grass" && southwest == "grass" && northeast == "grass" && northwest == "dirt" && southeast == "dirt") { 
				tile_sprite = 19; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "grass" && west == "grass" && northwest == "dirt" && southeast == "grass" && northeast == "grass") { 
				tile_sprite = 12; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "grass" && west == "grass" && southeast == "dirt" && northwest == "grass" && southwest == "grass") { 
				tile_sprite = 5; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "grass" && west == "grass" && southwest == "dirt" && northeast == "grass" && southeast == "grass") { 
				tile_sprite = 7; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			} else if (north == "grass" && south == "grass" && east == "grass" && west == "grass" && northeast == "dirt" && southwest == "grass" && northwest == "grass") { 
				tile_sprite = 10; 
				ds_list_set(map_grid[# i, j], 2, tile_sprite);
			}
		}
	}
}
if (do_cleanup) alarm[0] = 1;