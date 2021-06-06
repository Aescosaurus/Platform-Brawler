if( !used )
{
	var player = get_player()
	
	if( player.hp < player.max_hp )
	{
		player.hp += 1
		
		used = true
		
		var fist = instance_create_layer( player.x,player.y,"instances",fist_obj )
		var enemy = evt_data
		if( instance_exists( enemy ) )
		{
			fist.direction = point_direction( player.x,player.y,enemy.x,enemy.y )
			fist.image_angle = fist.direction
		}
	
		audio_play_sound( fist1_sfx,0,false )
	}
}