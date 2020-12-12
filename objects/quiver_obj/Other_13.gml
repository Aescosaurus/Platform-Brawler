if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	var enemy = get_rand_enemy()
	var target_dir = point_direction( player.x,player.y,enemy.x,enemy.y )
	
	for( var i = -1; i < 2; ++i )
	{
		var bullet = instance_create_layer( player.x,player.y,"instances",arrow_obj )
		
		bullet.direction = target_dir + 15 * i
		bullet.image_angle = bullet.direction - 45
	}
}