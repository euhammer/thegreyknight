global.map = ds_grid_create(50,50);
global.grid_width = 16;
global.grid_height = 12;
global.scale_factor = 4;
global.tile_size = 16;
var column;
for (column = 0; column < 50; column+=1) {
	if (column % 3 == 0) {
		ds_grid_add_region(global.map, column, 0, column, 10, 1);
	} else {
		ds_grid_add_region(global.map, column, 0, column, 49, 0);
	}
}

for (column = 0; column < 50; column+=1) {
	var row;
	for (row = 0; row < 50; row+=1) {
		if (ds_grid_get(global.map, column, row) == 1) {
			with instance_create_depth(column * global.grid_width * global.scale_factor, row * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - row, obj_wall) {
				image_xscale = 4;
				image_yscale = 4;
			}
		}
	}
}

with instance_create_depth(8 * global.grid_width * global.scale_factor, 8 * global.grid_height * global.scale_factor - 4 * global.scale_factor, -200 - 8, obj_player) {
	image_xscale = 4;
	image_yscale = 4;
	camera_set_view_pos(view_camera[0], self.x + sprite_width / 2 - camera_get_view_width(view_camera[0]) / 2, self.y + sprite_height / 2 - camera_get_view_height(view_camera[0]) / 2)
	self.grid_x = 8;
	self.grid_y = 8;
}


