// Center
center = find_sprite_center(id);

// Copy Weapon Angle from Player
weapon_angle = obj_player.weapon_angle;

// Align to Player
anchor_x = obj_player.sprite_x + WEAPON_OFFSET_FORWARD*dcos(weapon_angle) + WEAPON_OFFSET_SIDE*dsin(weapon_angle);
anchor_y = obj_player.sprite_y - WEAPON_OFFSET_FORWARD*dsin(weapon_angle) + WEAPON_OFFSET_SIDE*dcos(weapon_angle);
// Periodic Floating
x = anchor_x;
y = anchor_y + WEAPON_FLOAT_AMPLITUDE * sin( WEAPON_FLOAT_FREQUENCY * current_time/room_speed );

speed = obj_player.speed;
direction = obj_player.direction;

// Weapon Cooldown
if firing and cooldown <= 0 event_user(FINISH_FIRING) // Finish Firing

// Fire Weapon
if global.key_attack_pressed {
	attempt_to_fire();
}