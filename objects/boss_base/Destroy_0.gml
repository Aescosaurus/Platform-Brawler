event_inherited()

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