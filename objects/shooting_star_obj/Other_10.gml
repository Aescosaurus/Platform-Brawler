if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = get_player()
	
	var n_shots = 4
	for( var i = 0; i < n_shots; ++i )
	{
		var shot = instance_create_layer( player.x,player.y,"instances",star_obj )
		shot.direction = 45 + ( 360 / n_shots ) * i
	}
}