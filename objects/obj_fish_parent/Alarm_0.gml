/// @description Initial Path Start
is_accelerating = true;

// Start on a random point in the path.
path_position = random(1);

path_start(my_path, 0.05, path_action_stop, true);

// Set our start position to the starting position on this path.
start_position_x = x;
start_position_y = y;