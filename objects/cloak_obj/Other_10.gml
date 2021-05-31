if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	audio_play_sound( special_attack1_sfx,0,false )
	
	set_global( "player_cloak",true )
	alarm_set( 0,invul_duration )
}