/// @description Physics-based move towards point
/// @param x  X position to move towards
/// @param y  Y position to move towards
/// @param spd  Speed to move towards the point at
var other_x = argument0;
var other_y = argument1;
var spd     = argument2;

var dir = point_direction(x, y, other_x, other_y);

phy_speed_x = lengthdir_x(spd, dir);
phy_speed_y = lengthdir_y(spd, dir);