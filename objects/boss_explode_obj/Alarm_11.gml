for( var i = 0; i < explode_count; ++i )
{
	instance_create_depth( x + random_range( -sprite_width,sprite_width ),
		y + random_range( -sprite_width,sprite_width ),
		-10,
		explode_obj )
}

instance_create_depth( room_width / 2,room_height / 2 + 10,
	-20,retry_button_obj )
instance_create_depth( 0,0,-10,win_obj )
	
var player = instance_find( player_obj,0 )
player.won = true

audio_play_sound( enemy_ouch_boss2_sfx,0,false )

instance_destroy()