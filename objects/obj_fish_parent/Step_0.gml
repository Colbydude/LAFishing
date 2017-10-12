/// @description Execute state.
fish_set_facing();
script_execute(state);

// Outside room.
if (x < -18) {
    instance_destroy();
}