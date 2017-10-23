// Arguments:
// a -> lower bound
// b -> upper bound
// x -> current value
// return -> value from 0.0-1.0 interpolated

{
    if (argument2 < argument0) return 0;
    if (argument2 >= argument1) return 1;
    if (argument0 == argument1) return -1;
    var p = (argument2 - argument0) / (argument1 - argument0);
    return (p * p * (3 - 2 * p));
}