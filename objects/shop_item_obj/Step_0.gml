var player = instance_find( player_obj,0 )
can_click = get_len_sq( player.x - x,player.y - y ) < sqr( buy_dist )

if( can_click && player.coin_count >= cost && keyboard_check( ord( "E" ) ) )
{
	// give player item
	
	player.coin_count -= cost
	
	instance_create_layer( x,y,"instances",item )
	
	instance_destroy()
}