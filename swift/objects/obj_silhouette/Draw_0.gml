// Set Up Blending
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);

var cx = view_xport[0];
var cy = view_yport[0];
var cw = view_wport[0];
var ch = view_hport[0];

// Draw Alpha Mask
surface_set_target(silhouette_surface);
draw_set_alpha(0);
draw_rectangle(cx,cy,cx+cw,cy+ch,false);
surface_reset_target();
draw_set_alpha(1);

// Reset Blending
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);