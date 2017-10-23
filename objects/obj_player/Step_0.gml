/// @description Insert description here
// You can write your code in this editor

if self.elapsed <= room_speed / 3 {
	var inter = cub_ease(0, room_speed / 3, elapsed)
	var inter_x = self.previous_x + ((self.x + sprite_width / 2 - camera_get_view_width(view_camera[0]) / 2 - self.previous_x) * inter)
	var inter_y = self.previous_y + ((self.y + sprite_height / 2 - camera_get_view_height(view_camera[0]) / 2 - self.previous_y) * inter)
	camera_set_view_pos(view_camera[0], inter_x, inter_y)
	elapsed += 1
}