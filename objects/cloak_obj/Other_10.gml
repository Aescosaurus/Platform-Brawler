if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	set_global( "player_cloak",true )
	alarm_set( 0,invul_duration )
}