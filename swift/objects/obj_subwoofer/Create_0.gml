// Inherit from parent
event_inherited();

WEAPON_NAME = "Subwoofer";

// Offset Weapon Based on Weapon Angle
WEAPON_OFFSET_FORWARD = 20; // Forward is Positive
WEAPON_OFFSET_SIDE = 0; // Right is Positive
ROTATION_OFFSET = 0;
ROTATES = false;

ATTACK_COOLDOWN = 2 * room_speed // Attacks 0.5 times per second

// Weapon presets 
SPR_WEAPON_IDLE = spr_subwoofer_idle;
SPR_WEAPON_FIRE = spr_subwoofer_fire;

SPR_WEAPON_CROSSHAIR = spr_subwoofer_crosshair;
SPR_WEAPON_DISPLAY = spr_subwoofer_idle;

DISABLES_CONTROL = true;

// Projectile presets
WEAPON_PROJECTILE = obj_subwoofer_melee_hitbox;
PROJECTILE_OFFSET_FORWARD = 0;
PROJECTILE_OFFSET_SIDE = 0;

// Weapon Variables
attack_animation_loop = 0; // Counter for number of animation loops.