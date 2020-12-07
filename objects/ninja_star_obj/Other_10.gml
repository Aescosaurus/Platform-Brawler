if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	for( var i = 0; i < instance_number( enemy_base ); ++i )
	{
		var player = instance_find( player_obj,0 )
		var fireball = instance_create_layer( player.x,player.y,"instances",fireball_obj )
		fireball.speed = 2.3
		
		var cur_enemy = instance_find( enemy_base,i )
		fireball.direction = point_direction( fireball.x,fireball.y,cur_enemy.x,cur_enemy.y )
	}
}