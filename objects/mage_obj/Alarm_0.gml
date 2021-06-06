var player = instance_find( player_obj,0 )
// if( get_len_sq( player.x - x,player.y - y ) < sqr( attack_range ) )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = point_direction( x,y,player.x,player.y )
	
	audio_play_sound( enemy_shoot1_sfx,0,false )
}

alarm_set( 0,refire )