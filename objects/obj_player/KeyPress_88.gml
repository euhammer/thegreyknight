/// @description Insert description here
// You can write your code in this editor
var target_val = ds_grid_get(global.map, self.grid_x, self.grid_y + 1)
if target_val != 1 {
	self.previous_y = camera_get_view_y(view_camera[0])
	self.previous_x = camera_get_view_x(view_camera[0])
	self.elapsed = 0
	y += global.grid_height * global.scale_factor
	self.grid_y += 1
	depth -= 1
	image_index = 0
}