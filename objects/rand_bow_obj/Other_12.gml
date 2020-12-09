if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	var rand_enemy = instance_find( enemy_base,
		irandom_range( 0,instance_number( enemy_base ) - 1 ) )
	
	var target_dir = point_direction( player.x,player.y,rand_enemy.x,rand_enemy.y )
	
	var bullet = instance_create_layer( player.x,player.y,"instances",arrow_obj )
	bullet.direction = target_dir
	bullet.image_angle = bullet.direction - 45
}