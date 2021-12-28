/// @description Create the grid
// You can write your code in this editor

var cell_width = 32;
var cell_height = 32;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid_ground = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);
global.grid_air = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add walls to grid
with obj_wall mp_grid_add_rectangle(global.grid_ground, bbox_left, bbox_top, bbox_right, bbox_bottom);
with obj_hole mp_grid_add_rectangle(global.grid_ground, bbox_left, bbox_top, bbox_right, bbox_bottom);

with obj_wall mp_grid_add_rectangle(global.grid_air, bbox_left, bbox_top, bbox_right, bbox_bottom);
