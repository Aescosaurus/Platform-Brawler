tilemap = layer_tilemap_get_id( "tiles" )

damage = 12

wall_dest_dist = 12

// Prevent memory leak caused by shooting through open doors.
alarm_set( 11,20 * room_speed )

knockback = 0