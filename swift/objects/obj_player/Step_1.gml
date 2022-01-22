// Update Sprite center
sprite_center = find_sprite_center(id)
sprite_x = sprite_center[0]
sprite_y = sprite_center[1]

// Produce Weapon Angle
weapon_angle = point_direction(obj_player.sprite_x, obj_player.sprite_y, mouse_x, mouse_y); // In Degrees