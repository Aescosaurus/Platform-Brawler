if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	var target_dir = player.look_dir > 0 ? 0 : 180
	
	var bullet = instance_create_layer( player.x,player.y,"instances",arrow_obj )
	
	bullet.direction = target_dir
	bullet.image_angle = bullet.direction - 45
}