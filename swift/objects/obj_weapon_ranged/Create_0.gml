// Inherit from parent
event_inherited();

// Weapon Information
WEAPON_NAME = "Ranged Weapon";
WEAPON_ID = "weapon_ranged";
sprite_direction = "side";
sprite_action = "idle";

// Sprites
SPR_WEAPON_DISPLAY = spr_weapon_ranged_idle_side;
SPR_WEAPON_CROSSHAIR = spr_weapon_ranged_crosshair;

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 0; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive
recoil_offset = 0;
recoiling = false;

// Weapon Stats
ATTACK_COOLDOWN = room_speed / 4; // Fires 4 times per second

SFX_WEAPON_FIRE = sfx_player_ranged;
SFX_WEAPON_SWAPPED_IN = sfx_swap_ranged;

// Projectile Presets
WEAPON_PROJECTILE = obj_weapon_ranged_projectile;
PROJECTILE_OFFSET_FORWARD = 20;
PROJECTILE_OFFSET_SIDE = 0;

// Generate Sprite Index Method
function generate_sprite_index() {
	sprite_index = asset_get_index("spr_" + WEAPON_ID + "_" + sprite_action + "_" + sprite_direction);
}