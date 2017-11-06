/// @description Create global variables
// -------------------------------------------
global.debug = false;                       // Whether or not to use debug functions.
global.play_audio = false;                  // Whether or not to play sound.
global.points = 0;                          // Amount of points.
global.number_font = font_add_sprite_ext(spr_numbers, "0123456789", false, 0);

// Set a random seed so fish never spawn in the same spot.
randomize();