/// @description Insert description here
// You can write your code in this editor
var target_val = ds_grid_get(global.map, self.grid_x + 1, self.grid_y)
if target_val != 1 {
	self.previous_y = camera_get_view_y(view_camera[0])
	self.previous_x = camera_get_view_x(view_camera[0])
	self.elapsed = 0
	x += global.grid_width * global.scale_factor
	self.grid_x += 1
	image_index = 3
}