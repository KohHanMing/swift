/// @description Manual Collision Check

event_inherited();

if (instance_place(x, y, obj_player) != noone) and (obj_player.falling_time == 0) {
	// Do not collide with player if he is falling
	manual_projectile_collision(obj_player);
}
