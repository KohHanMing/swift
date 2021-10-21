/// @description Insert description here
// You can write your code in this editor
if (obj_game.CURR_LEVEL == 1) {
	room_goto(rm_melee_easy);
	obj_game.CURR_LEVEL += 1;
} else if (obj_game.CURR_LEVEL == 2) {
	room_goto(rm_ranged_easy);
	obj_game.CURR_LEVEL += 1;
} else if (obj_game.CURR_LEVEL == 3) {
	room_goto(rm_melee_basic);
	obj_game.CURR_LEVEL += 1;
} else if (obj_game.CURR_LEVEL == 4) {
	room_goto(rm_ranged_basic);
	obj_game.CURR_LEVEL += 1;
}