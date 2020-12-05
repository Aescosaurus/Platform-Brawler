alarm_set( 1,refire )


do
{
	my_tp_spot.x = irandom_range( 1,( room_width / tile_size ) - 1 ) * tile_size + 8
	my_tp_spot.y = irandom_range( 1,( room_height / tile_size ) - 1 ) * tile_size + 8
		
}
until( tilemap_get_at_pixel( tilemap,my_tp_spot.x,my_tp_spot.y ) < 1 )

teleporting = true

alarm_set( 2,dir_swap_refire )