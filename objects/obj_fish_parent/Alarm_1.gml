/// @description Path Reverse
is_accelerating = true;
path_is_reversed = !path_is_reversed;

path_reverse(my_path);
path_start(my_path, 0.05, path_action_stop, true);