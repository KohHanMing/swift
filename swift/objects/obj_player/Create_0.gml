/// @description Insert description here
// You can write your code in this editor

//Constants
ACCELERATION_PX_PER_FRAME = 4;
MAX_SPEED_PX_PER_FRAME = 8;
DASH_SPEED_INCREASE = 20;

CURR_HEALTH = 10;
MAX_HEALTH = 10;

//Variables
moving = false;
dashing = false;
w_key_pressed = false;
a_key_pressed = false;
s_key_pressed = false;
d_key_pressed = false;

//Physics
//var fix;
//fix = physics_fixture_create();
//physics_fixture_set_collision_group(fix, 1);
//physics_fixture_set_edge_shape(fix,x-sprite_width/2, y+sprite_height/2, x+sprite_width/2, y+sprite_height/2);
//physics_fixture_set_density(fix, 1);
//physics_fixture_set_linear_damping(fix, 1);
//physics_fixture_set_friction(fix, 1);
//physics_fixture_bind(fix, object_index);
phy_fixed_rotation = true;