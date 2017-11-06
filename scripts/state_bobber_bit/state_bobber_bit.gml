/// @description Bobber is bit, fish is trying to pull it away.
if (pursuer.state != States.FishBiting) {
    pursuer.state = States.FishBiting;
}

visible = false;
bobber_input();

// Have the bobber be pulled away by the fish.
if (ticks >= 8) {
    var multiplier = random_range(0.5, 2);
    physics_apply_force(x, y, -8 * multiplier, (random(1) < 0.5 ? -4 : 4) * multiplier);
    ticks = 0;
}
else {
    ticks++;
}

// Fish has made off with the bobber.
if (x < 8) {
    instance_destroy();
}