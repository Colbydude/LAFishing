/// @description Draws an outline of the cone of sight for debugging.

if (global.debug) {
    if (facing == 0) {
        draw_triangle(x, y + 8, x + lengthdir_x(cone_of_sight_length, cone_of_sight_down), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_down), x + lengthdir_x(cone_of_sight_length, cone_of_sight_up), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_up), true);
    }
    else if (facing == 1) {
        draw_triangle(x, y + 8, x - lengthdir_x(cone_of_sight_length, cone_of_sight_down), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_down), x - lengthdir_x(cone_of_sight_length, cone_of_sight_up), y + 8 + lengthdir_y(cone_of_sight_length, cone_of_sight_up), true);
    }
}