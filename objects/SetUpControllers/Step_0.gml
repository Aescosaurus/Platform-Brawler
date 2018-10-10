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
			var nPlayers = instance_number( Player )
			if( nPlayers == 0 )
			{
				var pl = instance_create_layer( spawnX,spawnY,"MainLayer",Player )
				pl.myDevice = 0
			}
			break
		case 1:
			global.PLAYER_TWO_CONNECTED = true
			var nPlayers = instance_number( Player )
			if( nPlayers == 1 )
			{
				var pl = instance_create_layer( spawnX,spawnY,"MainLayer",Player )
				pl.myDevice = 1
			}
			break
		case 2:
			global.PLAYER_THREE_CONNECTED = true
			var nPlayers = instance_number( Player )
			if( nPlayers == 2 )
			{
				var pl = instance_create_layer( spawnX,spawnY,"MainLayer",Player )
				pl.myDevice = 2
			}
			break
		case 3:
			global.PLAYER_FOUR_CONNECTED = true
			var nPlayers = instance_number( Player )
			if( nPlayers == 3 )
			{
				var pl = instance_create_layer( spawnX,spawnY,"MainLayer",Player )
				pl.myDevice = 3
			}
			break
		default:
			// You will never get this
			break
		}
	}
}