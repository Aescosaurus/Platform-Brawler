if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	var player = instance_find( player_obj,0 )
	var target_dir = player.look_dir > 0 ? 0 : 180
	
	for( var i = -1; i < 2; ++i )
	{
		var bullet = instance_create_layer( player.x,player.y,"instances",fireball_obj )
		
		bullet.direction = target_dir + 15 * i
		bullet.speed = 2.5
	}
}