// Align to player
x = obj_player.sprite_x + WEAPON_OFFSET_FORWARD*dcos(weapon_angle) + WEAPON_OFFSET_SIDE*dsin(weapon_angle)
y = obj_player.sprite_y - WEAPON_OFFSET_FORWARD*dsin(weapon_angle) + WEAPON_OFFSET_SIDE*dcos(weapon_angle)
speed = obj_player.speed;
direction = obj_player.direction;

// Rotate image with reference to mouse
weapon_angle = point_direction(x, y, mouse_x, mouse_y);