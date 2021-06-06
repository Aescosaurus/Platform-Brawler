var player = instance_find( player_obj,0 )
// if( get_len_sq( player.x - x,player.y - y ) < sqr( attack_range ) )
{
	x_vel = sign( player.x - x ) * jump_pow
	y_vel = -jump_pow
}

audio_play_sound( enemy_jump_sfx,0,false )

alarm_set( 0,refire )