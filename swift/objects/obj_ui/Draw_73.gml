// Enemy Indicator

with(obj_enemy) {
	if within_view(id) continue;
	
	var _indicator_distance = 112;
	var _dir = point_direction(obj_player.x, obj_player.sprite_y, sprite_x, sprite_y)
	
	draw_sprite_ext(spr_enemy_indicator, 0, obj_player.sprite_x + lengthdir_x(_indicator_distance, _dir), obj_player.sprite_y + lengthdir_y(_indicator_distance, _dir), 1, 1, _dir, c_white, 1);
	
}