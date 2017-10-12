// Fish is on its path, and not in pursuit.
phy_speed_x = 0;
phy_speed_y = 0;
sprite_index = spr_swim;

// Handle initial acceleration to make the fish swim.
if (is_accelerating) {
    image_speed = 0.5;
    path_speed += acceleration_speed;

    if (path_speed >= top_speed) {
        is_accelerating = 0;
        path_speed = top_speed;
    }
}

// Stop "swimming" after we're half-way through the path.
if (path_position > 0.5) {
    image_speed = 0;
}

// Manual deceleration.
if (path_position > 0.75) {
    path_speed = top_speed * 0.75;
}

if (path_position >= 0.90) {
    path_speed = top_speed * 0.5;
}

// Check to see if we can pursue the bobber.
if (instance_exists(obj_bobber)) {
    if (
        obj_bobber.state == state_bobber_usable &&
        point_in_cone_of_sight(obj_bobber.x, obj_bobber.y) &&
        obj_bobber.pursuer == null
    ) {
        path_end();
        state = state_fish_pursuit;
        obj_bobber.pursuer = self;
    }
}