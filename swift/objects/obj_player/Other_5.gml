// Disable Falling. Player does not move when room is changed.
// This is to ensure that the player does not fall in a hole immediately.
can_fall = false;

// Weapons must be activated for them to persist into next room.
instance_activate_object(melee_weapon_id);
instance_activate_object(ranged_weapon_id);