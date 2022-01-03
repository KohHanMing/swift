phy_fixed_rotation = true;
phy_rotation = 0;
phy_linear_damping = 10;
image_index = irandom(image_number-1);

apply_vector(id,random_range(5,7.5),obj_player.current_weapon_id.weapon_angle + random_range(-45,45));

if irandom(1) image_xscale = -1;