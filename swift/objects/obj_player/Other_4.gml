// GMS2 Bug: phy_fixed_rotation does not persist through rooms.
phy_fixed_rotation = true;

// Create Light
create_following_light(id,$FFAAFFAA,16);

// Deactivate Weapons Accordingly
var _current_weapon = current_weapon;
current_weapon = -1;
change_weapon(_current_weapon);
