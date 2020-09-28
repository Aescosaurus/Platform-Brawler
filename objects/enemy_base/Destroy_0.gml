if( instance_number( enemy_base ) <= 1 )
{
	var tilemap = layer_tilemap_get_id( "tiles" )
	
	var width = tilemap_get_width( tilemap )
	var height = tilemap_get_height( tilemap )
	
	for( var iy = 0; iy < height; ++iy )
	{
		for( var ix = 0; ix < width; ++ix )
		{
			if( tilemap_get( tilemap,ix,iy ) == 4 )
			{
				tilemap_set( tilemap,0,ix,iy )
			}
		}
	}
	
	// todo trigger cool anim instead of destroy
	door_obj.image_index = 2
	
	instance_destroy( en_bullet_base )
}