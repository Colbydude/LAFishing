/// @description Draw fish.
debug_draw_physics();
debug_draw_cone_of_sight();

image_xscale = (facing == 0) ? -1 : 1;

draw_self();