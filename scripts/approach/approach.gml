/// @description Approach a to b by a given amount.
/// @param a
/// @param b
/// @param amount
var a = argument0
var b = argument1;
var amount = argument2;

if (a < b) {
    a += amount;
    
    if (a > b) {
        return b;
    }
}
else {
    a -= amount;
    
    if (a < b) {
        return b;
    }
}

return a;