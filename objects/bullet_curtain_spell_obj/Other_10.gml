if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	for( var i = 1; i < spawn_width - 1; ++i )
	{
		var bullet = instance_create_layer(
			i * tile_width + tile_width / 2,
			tile_width + tile_width / 2,
			"instances",fireball_obj )
		bullet.direction = 270
		bullet.speed = 3
	}
}