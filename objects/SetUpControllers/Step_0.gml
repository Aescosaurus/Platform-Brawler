/// @description Check for controllers connected
// Only put in start room to help performance if that becomes a problem.

var nDevices = gamepad_get_device_count()
for( var i = 0; i < nDevices; ++i )
{
	if( gamepad_is_connected( i ) )
	{
		switch( i )
		{
		case 0:
			global.PLAYER_ONE_CONNECTED = true
			break
		case 1:
			global.PLAYER_TWO_CONNECTED = true
			break
		case 2:
			global.PLAYER_THREE_CONNECTED = true
			break
		case 3:
			global.PLAYER_FOUR_CONNECTED = true
			break
		default:
			// You will never get this
			break
		}
	}
}