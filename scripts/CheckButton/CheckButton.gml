/// @param_device
/// @param_constant
/// @param_button

var device = argument0
var constant = argument1
var button = argument2

if( gamepad_is_connected( device ) )
{
	// return( gamepad_axis_value( device,constant ) )
	return( gamepad_button_check( device,constant ) )
}
else
{
	return( keyboard_check( button ) )
}