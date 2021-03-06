physics_move_towards_point(start_position_x, start_position_y, 1);

direction = point_direction(x, y, start_position_x, start_position_y);
image_speed = 0.5;
sprite_index = spr_swim;

// Start path once we reach the starting position.
if (point_distance(x, y, start_position_x, start_position_y) < 1) {
    x = start_position_x;
    y = start_position_y;

    if (path_is_reversed) {
        path_is_reversed = false;

        path_reverse(my_path);
    }

    is_accelerating = true;
    path_start(my_path, 0.05, path_action_stop, true);

    state = States.FishIdle;
}