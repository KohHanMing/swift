/// @description Insert description here
// You can write your code in this editor

//for shadow rendering
depth = -y;

switch (state) {
	case "normal": player_normal(); break;
	case "falling": player_falling(); break;
}

move_wrap(true, true, sprite_width/2);

event_inherited();
