/// @description Initialize Variables

PADDING = 60;

UI_BASE_ANCHOR = [PADDING,PADDING];

MELEE_WEAPON_DISPLAY_ANCHOR = [PADDING,global.gui_height-2*(PADDING+sprite_get_height(spr_weapon_display))];
RANGED_WEAPON_DISPLAY_ANCHOR = [PADDING,global.gui_height-(PADDING+sprite_get_height(spr_weapon_display))];

HEALTH_BAR_ANCHOR = [UI_BASE_ANCHOR[0]+48,UI_BASE_ANCHOR[1]+0];
HEALTH_BAR_END_LENGTH = 32;
HEALTH_BAR_LENGTH = sprite_get_width(spr_ui_health) - HEALTH_BAR_END_LENGTH;

ENERGY_BAR_ANCHOR = [UI_BASE_ANCHOR[0]+60,UI_BASE_ANCHOR[1]+68];
ENERGY_BAR_END_LENGTH = 20;
ENERGY_BAR_LENGTH = sprite_get_width(spr_ui_energy) - ENERGY_BAR_END_LENGTH;

DASH_BAR_ANCHOR = [UI_BASE_ANCHOR[0]+48,UI_BASE_ANCHOR[1]+112];
DASH_BAR_END_LENGTH = 12;
DASH_BAR_LENGTH = sprite_get_width(spr_ui_dash) - ENERGY_BAR_END_LENGTH;

health_display = 0;
energy_display = 0;
dash_display = 0;