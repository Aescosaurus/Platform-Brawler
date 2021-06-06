if( check_global( "dest_bullets" ) )
{
	audio_play_sound( destroy_enemy_bullet_sfx,0,false )
	
	instance_destroy( other )
	instance_destroy()
}