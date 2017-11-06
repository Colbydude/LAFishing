with (pursuer) {
    if (state == States.FishBiting) {
        instance_destroy();
    }
    else {
        state = States.FishReturning;
    }
}

instance_create_depth(x, y, 0, obj_bobber);