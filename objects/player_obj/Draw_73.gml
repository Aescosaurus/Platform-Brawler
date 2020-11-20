for( var i = 0; i < max_hp; ++i )
{
	draw_sprite( i < hp ? heart_spr : empty_heart_spr,
		0,i * ( sprite_get_width( heart_spr ) + 2 ) + 2,2 )
}

for( var i = 0; i < coin_count; ++i )
{
	draw_sprite( coin_spr,0,
		max_hp * ( sprite_get_width( heart_spr ) + 2 ) + 3 +
		( sprite_get_width( coin_spr ) + 1 ) * i,4 )
}

if( hp < 1 )
{
	global.time_scale = 0.0
	
	draw_sprite( game_over_spr,0,room_width / 2,room_height / 2 )
	
	if( instance_number( retry_button_obj ) < 1 )
	{
		instance_create_layer( room_width / 2,room_height / 2 + 20,
			"instances",retry_button_obj )
	}
}