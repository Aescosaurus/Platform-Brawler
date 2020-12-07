if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	freezing = true
	
	alarm_set( 0,freeze_duration )
}