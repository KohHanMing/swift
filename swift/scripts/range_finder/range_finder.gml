// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// range_finder(x,y,dir,range,object,prec,notme)
//
//  Returns the exact distance to the nearest instance of an object in a
//  given direction from a given point, or noone if no instance is found.
//  The solution is found in log2(range) collision checks.
//
//      x,y         position in room, real
//      dir         direction to look in degrees, real
//      range       the greatest distance to look in pixels, real
//      object      which objects to look for (or all), real
//      prec        true to use precise collision checking, bool
//      notme       true to ignore the calling instance, bool
//
/// GMLscripts.com/license
function range_finder(ox,oy,dir,range,object,prec=false,notme=true){
    var dx,dy,sx,sy,distance;

    sx = lengthdir_x(range,dir);
    sy = lengthdir_y(range,dir);
    dx = ox + sx;
    dy = oy + sy;
    if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
        distance = -1;
    }else{
        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
            sx /= 2;
            sy /= 2;
            if (collision_line(ox,oy,dx,dy,object,prec,notme) < 0) {
                dx += sx;
                dy += sy;
            }else{
                dx -= sx;
                dy -= sy;
            }
        }
        distance = point_distance(ox,oy,dx,dy);
    }
    return distance;
}
