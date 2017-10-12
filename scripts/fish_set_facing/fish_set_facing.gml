/// @description If our direction is on the right side of the radian circle, face right.
///              Otherwise, face left.
if (direction <= 90 && direction >= 0) || (direction >= 270 && direction <= 360) {
    facing = 0;
}
else {
    facing = 1;
}