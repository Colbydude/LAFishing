acceleration_speed = 0.075;     // Acceleration speed.
cone_of_sight_down = 24;        // Length of the vision triangle down.
cone_of_sight_length = 32;      // Length of the vision triangle left/right.
cone_of_sight_up = -24;         // Length of the vision triangle up.
facing = 0;                     // Direction the fish is facing.
is_accelerating = false;        // Whether or not the fish is accelerating.
my_path = null;                 // Path for the fish to follow.
path_is_reversed = false;       // Whether or not the path is on a reverse run or not.
phy_fixed_rotation = true;      // Prevent the physics object from rotating.
point_value = 0;                // Amount of points catching the fish is worth.
start_position_x = x;           // Point to return to after following the bobber.
start_position_y = y;           // Point to return to after following the bobber.
state = States.FishIdle;        // State.
top_speed = 1;                  // Top speed for the fish to reach on its path.

// Start paths after a (very) short delay.
alarm[0] = 1;