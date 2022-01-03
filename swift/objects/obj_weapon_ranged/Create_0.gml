// Inherit from parent
event_inherited();

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 0; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive
recoil_offset = 0;
recoiling = false;

ATTACK_COOLDOWN = room_speed / 4; // Fires 4 times per second

SPR_WEAPON_IDLE_SIDE = spr_weapon_ranged_idle_side;
SPR_WEAPON_FIRE_SIDE = spr_weapon_ranged_fire_side;

SPR_WEAPON_IDLE_FRONT = spr_weapon_ranged_idle_front;
SPR_WEAPON_FIRE_FRONT = spr_weapon_ranged_fire_front;

SPR_WEAPON_IDLE_BACK = spr_weapon_ranged_idle_back;
SPR_WEAPON_FIRE_BACK = spr_weapon_ranged_fire_back;

SFX_WEAPON = sfx_player_ranged;

WEAPON_PROJECTILE = obj_weapon_ranged_projectile;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;