if( ++barrage_it > barrage_size )
{
	barrage_it = 0
}
else
{
	audio_play_sound( star1_sfx,0,false )
	var player = instance_find( player_obj,0 )
	var star = instance_create_layer( player.x,player.y,"instances",star_obj )
	star.direction = ( player.look_dir > 0 ? 0 : 180 )
	
	alarm_set( 0,refire )
}