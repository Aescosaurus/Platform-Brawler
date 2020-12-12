if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	var n_shots = 4
	for( var i = 0; i < n_shots; ++i )
	{
		var fireball = instance_create_layer( player.x,player.y,"instances",fireball_obj )
		fireball.speed = 2.5
		fireball.direction = ( 360 / n_shots ) * i
	}
}