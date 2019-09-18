show_debug_message("cleanup");
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
		if (tile_type = "grass") {
			if (north == "grass" && south == "dirt" && east == "grass" && west == "dirt" && northeast == "dirt" && southeast == "grass" && southwest == "grass" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "grass" && east == "grass" && west == "dirt" && northeast == "grass" && southeast == "dirt" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "grass" && east == "dirt" && west == "dirt" && northeast == "grass" && southeast == "grass" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "grass" && west == "dirt" && northeast == "grass" && southeast == "grass" && southwest == "grass" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "grass" && northeast == "dirt" && southeast == "dirt" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "dirt" && east == "grass" && west == "dirt" && northeast == "dirt" && southeast == "dirt" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "dirt" && east == "dirt" && west == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "grass" && east == "dirt" && west == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "grass" && west == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "grass" && west == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "grass" && east == "dirt" && west == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "dirt" && southeast == "dirt" && southwest == "dirt" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "grass" && east == "grass" && west == "dirt" && northeast == "grass" && southeast == "dirt" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "grass" && southeast == "dirt" && southwest == "dirt" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "dirt" && southeast == "grass" && southwest == "dirt" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "dirt" && southeast == "dirt" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "dirt" && southeast == "dirt" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "dirt" && southeast == "grass" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "grass" && southeast == "grass" && southwest == "dirt" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "dirt" && east == "dirt" && west == "grass" && northeast == "grass" && southeast == "grass" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "grass" && southeast == "dirt" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "grass" && east == "dirt" && west == "grass" && northeast == "grass" && southeast == "grass" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "dirt" && east == "dirt" && west == "grass" && northeast == "grass" && southeast == "grass" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "dirt" && east == "dirt" && west == "grass" && northeast == "grass" && southeast == "grass" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "dirt" && east == "dirt" && west == "grass" && northeast == "grass" && southeast == "dirt" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "grass" && northeast == "dirt" && southeast == "grass" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "dirt" && southeast == "dirt" && southwest == "grass" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "grass" && east == "dirt" && west == "grass" && northeast == "dirt" && southeast == "grass" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "grass" && south == "dirt" && east == "grass" && west == "dirt" && northeast == "dirt" && southeast == "grass" && southwest == "dirt" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "grass" && east == "grass" && west == "dirt" && northeast == "grass" && southeast == "dirt" && southwest == "grass" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "dirt" && southeast == "grass" && southwest == "grass" && northwest == "grass") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			} else if (north == "dirt" && south == "dirt" && east == "dirt" && west == "dirt" && northeast == "grass" && southeast == "dirt" && southwest == "grass" && northwest == "dirt") { 
				tile_type = "dirt";
				ds_list_set(map_grid[# i, j], 1, tile_type);
				ds_list_set(map_grid[# i, j], 2, 0);
			}
		}
	}
}
for (var k = 0; k < grid_width; k++) {
	ds_list_set(map_grid[# k, 0], 1, "dirt");
	ds_list_set(map_grid[# k, 0], 2, 0);
}
for (var l = 0; l < grid_height; l++) {
	ds_list_set(map_grid[# 0, l], 1, "dirt");
	ds_list_set(map_grid[# 0, l], 2, 0);
}
for (var m = 0; m < grid_width; m++) {
	ds_list_set(map_grid[# m, grid_height - 1], 1, "dirt");
	ds_list_set(map_grid[# m, grid_height - 1], 2, 0);
}
for (var n = 0; n < grid_height; n++) {
	ds_list_set(map_grid[# grid_width - 1, n], 1, "dirt");
	ds_list_set(map_grid[# grid_width - 1, n], 2, 0);
}
alarm[1] = 1;