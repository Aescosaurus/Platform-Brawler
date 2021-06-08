hp -= 1

if( hp >= 0 )
{
	audio_play_sound( destroy_enemy_bullet_sfx,0,false )
	
	instance_destroy( other )
	
	if( hp < 1 ) instance_destroy()
}