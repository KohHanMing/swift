/// @description Insert description here
// You can write your code in this editor
switch (room) {
	case rm_start: 
		curr_track = "main";
		break;
	case rm_tutorial_1_movement:
	case rm_tutorial_2_attack:
	case rm_tutorial_3_enemy:
		curr_track = "tutorial_combat";
		break;
	case rm_melee_easy:
	case rm_ranged_easy:
		curr_track = "ambient";
		curr_env = "1";
		break;
	case rm_melee_basic:
	case rm_ranged_basic:
	case rm_melee_and_ranged:
		curr_track = "ambient";
		curr_env = "2";
		break;
	case rm_win:
		curr_track = "ending";
		break;
	default: break;
}