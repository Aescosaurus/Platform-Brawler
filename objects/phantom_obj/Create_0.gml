event_inherited()
hp = 4

dir = choose( -1,1 )
image_xscale = dir
move_speed = random_range( 28,32 ) - 8

refire = random_range( 2.1,2.4 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

my_tp_spot = instance_create_layer( -9999,-9999,"instances",teleport_obj )

tile_size = tilemap_get_tile_width( tilemap )

teleporting = false

dir_swap_refire = random_range( 0.2,0.5 ) * 60.0