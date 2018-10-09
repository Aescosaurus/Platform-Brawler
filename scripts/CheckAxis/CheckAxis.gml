/// @param_device
/// @param_constant
/// @param_key1
/// @param_key2

var device = argument0
var constant = argument1
var key1 = argument2
var key2 = argument3

if( gamepad_is_connected( device ) )
{
	return( gamepad_axis_value( device,constant ) )
}
else
{
	return( keyboard_check( key2 ) - keyboard_check( key1 ) )
}