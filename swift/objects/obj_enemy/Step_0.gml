/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
goal_direction_x = PLAYER.x - x;
goal_direction_y = y - PLAYER.y;
	
goal_direction = radtodeg(arctan2(goal_direction_y,goal_direction_x)); //Somehow this is bugging out

if point_distance(x, y, PLAYER.x, PLAYER.y) > ATTACK_RANGE {
    move_towards_point(PLAYER.x, PLAYER.y, MAX_SPEED_PX_PER_FRAME);
} else {
	speed = 0;
}

move_wrap(true, true, sprite_width/2);

wall_collision(object_index);
