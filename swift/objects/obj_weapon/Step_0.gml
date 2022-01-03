// Center
center = find_sprite_center(id);

// Align to Player
anchor_x = obj_player.sprite_x + WEAPON_OFFSET_FORWARD*dcos(weapon_angle) + WEAPON_OFFSET_SIDE*dsin(weapon_angle);
anchor_y = obj_player.sprite_y - WEAPON_OFFSET_FORWARD*dsin(weapon_angle) + WEAPON_OFFSET_SIDE*dcos(weapon_angle);
// Periodic Floating
x = anchor_x;
y = anchor_y + WEAPON_FLOAT_AMPLITUDE * sin( WEAPON_FLOAT_FREQUENCY * current_time/room_speed );

speed = obj_player.speed;
direction = obj_player.direction;

// Weapon Angle is Point Direction
weapon_angle = point_direction(obj_player.sprite_x, obj_player.sprite_y, mouse_x, mouse_y); // In Degrees

// Weapon Cooldown
if firing and cooldown <= 0 event_user(4) // Finish Firing