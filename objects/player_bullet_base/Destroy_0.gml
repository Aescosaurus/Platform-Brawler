instance_create_layer( x,y,"instances",explode_obj )

if( instance_number( enemy_base ) < 1 )
{
	// var lowest = 9999
	for( var i = 0; i < instance_number( door_obj ); ++i )
	{
		var cur_door = instance_find( door_obj,i )
		
		if( cur_door.image_index > 0 )
		{
			var len = get_len_sq( cur_door.x + cur_door.sprite_width / 2 - x,
				cur_door.y + cur_door.sprite_height / 2 - y )
			
			// if( sqrt( len ) < lowest ) lowest = sqrt( len )
			
			if( len < sqr( wall_dest_dist ) )
			{
				cur_door.image_index = cur_door.image_number - 1
				
				tilemap_set_at_pixel( tilemap,0,cur_door.x,cur_door.y )
			}
		}
	}
	// print( lowest )
}