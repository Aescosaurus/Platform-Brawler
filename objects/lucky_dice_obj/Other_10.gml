if( ++cur_shot >= shot_timer )
{
	cur_shot = irandom_range( 1,6 )
	
	var player = get_player()
	var enemy = find_closest_enemy( player.x,player.y )
	
	var fist = instance_create_layer( player.x,player.y,"instances",fist_obj )
	
	if( instance_exists( enemy ) )
	{
		fist.direction = point_direction( player.x,player.y,enemy.x,enemy.y )
		fist.image_angle = fist.direction
	}
	
	audio_play_sound( fist1_sfx,0,false )
}