if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = get_player()
	var target_dir = ( player.look_dir > 0 ? 0 : 180 )
	
	for( var i = -1; i < 2; ++i )
	{
		var bullet = instance_create_layer( player.x,player.y,"instances",star_obj )
		
		bullet.direction = target_dir + 15 * i
	}
}