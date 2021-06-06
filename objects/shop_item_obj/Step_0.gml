var player = instance_find( player_obj,0 )
can_click = get_len_sq( player.x - x,player.y - y ) < sqr( buy_dist )
draw_desc = can_click

if( can_click && keyboard_check_pressed( ord( "E" ) ) )
{
	if( player.coin_count >= cost )
	{
		// give player item
		
		player.coin_count -= cost
		
		audio_play_sound( buy_item_sfx,0,false )
		
		instance_create_layer( x,y,"instances",item )
		
		instance_destroy()
	}
	else audio_play_sound( cant_buy_item_sfx,0,false )
}