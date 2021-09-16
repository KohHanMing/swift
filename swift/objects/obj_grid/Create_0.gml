/// @description Create the grid
// You can write your code in this editor

var cell_width = 32;
var cell_height = 32;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

// Add walls to grid
mp_grid_add_instances(global.grid, obj_wall, false);
