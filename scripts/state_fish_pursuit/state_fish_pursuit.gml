image_speed = 0.5;
sprite_index = spr_mouth_open;

// Move towards bobber depending on which way it is.
if (x < obj_bobber_physics.x) {
    if (point_distance(x, y, obj_bobber_physics.x - 16, obj_bobber_physics.y - 8) > 1) {
        physics_move_towards_point(obj_bobber_physics.x - 16, obj_bobber_physics.y - 8, 1);
    }
    else {
        phy_speed_x = 0;
        phy_speed_y = 0;
    }
}
else {
    if (point_distance(x, y, obj_bobber_physics.x + 16, obj_bobber_physics.y - 8) > 1) {
        physics_move_towards_point(obj_bobber_physics.x + 16, obj_bobber_physics.y - 8, 1);
    }
    else {
        phy_speed_x = 0;
        phy_speed_y = 0;
    }
}

if (
    (x < obj_bobber_physics.x && point_distance(x, y, obj_bobber_physics.x - 16, obj_bobber_physics.y - 8) < 2) ||
    (x > obj_bobber_physics.x && point_distance(x, y, obj_bobber_physics.x + 16, obj_bobber_physics.y - 8) < 2)
) {
    state = States.FishBiting;
    obj_bobber_physics.state = States.BobberBit;
}

if (!point_in_cone_of_sight(obj_bobber_physics.x, obj_bobber_physics.y) && obj_bobber_physics.pursuer == self) {
    state = States.FishReturning;
    obj_bobber_physics.pursuer = null;
}