if( ++cur_shot >= shot_timer )
{
	cur_shot = 0
	
	for( var i = 1; i < spawn_height - 1; ++i )
	{
		var b1 = instance_create_layer(
			tile_height + tile_height / 2,
			i * tile_height + tile_height / 2,
			"instances",arrow_obj )
		b1.direction = 0
		b1.image_angle = b1.direction - 45
		b1.speed = 7
		
		var b2 = instance_create_layer(
			room_width - tile_height - tile_height / 2,
			i * tile_height + tile_height / 2,
			"instances",arrow_obj )
		b2.direction = 180
		b2.image_angle = b2.direction - 45
		b2.speed = 7
	}
}