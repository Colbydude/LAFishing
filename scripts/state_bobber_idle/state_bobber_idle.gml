// Cast the line.
if (has_cast == false && (keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")))) {
    has_cast = true;
    x = 152;
    y = 24;

    path_start(path_bobber_cast, 8, path_action_stop, true);
}

if (has_cast && has_landed) {
    y += 0.75;
}