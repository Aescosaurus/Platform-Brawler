if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	var fireball = instance_create_layer( player.x,player.y,"instances",fireball_obj )
	fireball.speed = 2.5
	fireball.direction = player.look_dir > 0 ? 180 : 0
}