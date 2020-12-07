var player = instance_find( player_obj,0 )
draw_desc = get_len_sq( player.x - x,player.y - y ) < sqr( desc_dist )

// if( !draw_desc )
// {
// 	draw_desc = get_len_sq( mouse_x - x,mouse_y - y ) < sqr( mouse_desc_dist )
// }