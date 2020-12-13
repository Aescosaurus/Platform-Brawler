// // check up down left right
// if( tilemap_get_at_pixel( tilemap,x,bbox_top ) > 0 )
// {
// 	direction *= -1
// 	bounces -= 1
// }
// else if( tilemap_get_at_pixel( tilemap,x,bbox_bottom ) > 0 )
// {
// 	direction *= -1
// 	bounces -= 1
// }
// else if( tilemap_get_at_pixel( tilemap,bbox_left,y ) > 0 )
// {
// 	direction = 180 - direction
// 	bounces -= 1
// }
// else if( tilemap_get_at_pixel( tilemap,bbox_right,y ) > 0 )
// {
// 	direction = 180 - direction
// 	bounces -= 1
// }

if( tilemap_get_at_pixel( tilemap,x,y ) > 0 )
{
	direction += 180 + random_range( -35,35 )
	if( --bounces < 0 ) instance_destroy()
}

// spin
image_angle += 423.0 * get_dt()

// if( bounces < 0 ) instance_destroy()