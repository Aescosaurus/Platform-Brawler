if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	audio_play_sound( star1_sfx,0,false )
	
	var player = instance_find( player_obj,0 )
	var star = instance_create_layer( player.x,player.y,"instances",star_obj )
	star.direction = ( player.look_dir > 0 ? 0 : 180 ) + random_range( -ang_var,ang_var )
}