/// @description Checks if point is in cone of sight.
/// @param point_x  Point X to check
/// @param point_y  Point Y to check
var point_x = argument0;
var point_y = argument1;

if (facing == 0) {
    if (
        point_in_triangle(
            point_x, point_y,
            x, y + 8,
            x + lengthdir_x(cone_of_sight_length, cone_of_sight_down), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_down),
            x + lengthdir_x(cone_of_sight_length, cone_of_sight_up), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_up)
        )
    ) {
        return true;
    }
} else {
    if (
        point_in_triangle(
            point_x, point_y,
            x, y + 8,
            x - lengthdir_x(cone_of_sight_length, cone_of_sight_down), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_down),
            x - lengthdir_x(cone_of_sight_length, cone_of_sight_up), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_up)
        )
    ) {
        return true;
    }
}

return false;