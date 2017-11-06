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
if (instance_exists(obj_bobber_physics)) {
    if (
        obj_bobber_physics.state == States.BobberUsable &&
        point_in_cone_of_sight(obj_bobber_physics.x, obj_bobber_physics.y) &&
        obj_bobber_physics.pursuer == null
    ) {
        path_end();
        state = States.FishPursuit;
        obj_bobber_physics.pursuer = self;
    }
}