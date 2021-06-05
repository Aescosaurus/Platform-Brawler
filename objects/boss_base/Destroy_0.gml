// event_inherited()

ini_open( working_directory + "Save.ini" )

var loc = "achieve"

if( check_global( "player1" ) ) ini_write_real( loc,"win1",1 )
else ini_write_real( loc,"win2",1 )

// must complete game with all prev challenges to unlock the next
if( check_global( "chal1" ) )
{
	ini_write_real( loc,"chal1",1 )
	
	if( check_global( "chal2" ) )
	{
		ini_write_real( loc,"chal2",1 )
		
		if( check_global( "chal3" ) )
		{
			ini_write_real( loc,"chal3",1 )
			
			if( check_global( "chal4" ) )
			{
				ini_write_real( loc,"chal4",1 )
				
				if( check_global( "chal5" ) ) ini_write_real( loc,"chal5",1 )
			}
		}
	}
}

ini_close()

// if( hp < 1 )
{
	// global.time_scale = 0.0
	
	var player = instance_find( player_obj,0 )
	player.won = true
	
	audio_play_sound( enemy_ouch_boss_sfx,0,false )
	
	// if( instance_number( retry_button_obj ) < 1 )
	{
		instance_create_depth( room_width / 2,room_height / 2 + 10,
			-20,retry_button_obj )
		instance_create_depth( 0,0,-10,win_obj )
	}
}