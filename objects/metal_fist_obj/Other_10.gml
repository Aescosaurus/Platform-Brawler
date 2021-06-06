if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = get_player()
	var target_dir = ( player.look_dir > 0 ? 0 : 180 )
	
	for( var i = -1; i < 2; ++i )
	{
		var shot = instance_create_layer( player.x,player.y,"instances",fist_obj )
		
		shot.direction = target_dir + 15 * i
		shot.image_angle = shot.direction
	}
	
	audio_play_sound( fist2_sfx,0,false )
}