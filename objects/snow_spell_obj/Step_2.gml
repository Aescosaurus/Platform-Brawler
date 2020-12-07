if( freezing )
{
	for( var i = 0; i < instance_number( enemy_base ); ++i )
	{
		var cur_enemy = instance_find( enemy_base,i )
		
		cur_enemy.x_vel = 0.0
		cur_enemy.y_vel = 0.0
	}
}