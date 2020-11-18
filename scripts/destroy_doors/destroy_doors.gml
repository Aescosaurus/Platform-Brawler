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
// door_obj.image_index = door_obj.image_number - 1

for( var i = 0; i < instance_number( door_obj ); ++i )
{
	var cur_door = instance_find( door_obj,i )
	
	if( cur_door.image_index > 0 ) cur_door.image_index = cur_door.image_number - 1
}