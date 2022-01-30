/// @description Insert description here
// You can write your code in this editor
switch (room) {
	case rm_init_swift: 
		global.curr_track = "main";
		break;
	case rm_tutorial_1_movement:
	case rm_tutorial_2_attack:
	case rm_tutorial_3_enemy:
		global.curr_track = "tutorial_combat";
		break;
	case rm_melee_easy:
	case rm_ranged_easy:
		global.curr_track = "ambient";
		global.curr_env = "1";
		break;
	case rm_melee_basic:
		global.curr_track = "ambient";
		global.curr_env = "2";
		break;
	case rm_ranged_basic:
		global.curr_track = "boss1";
		break;
	case rm_melee_and_ranged:
		global.curr_track = "ambient";
		global.curr_env = "2";
		break;
	case rm_win:
		global.curr_track = "ending";
		break;
	default: break;
}