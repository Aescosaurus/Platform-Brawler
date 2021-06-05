// player_obj.hp = player_obj.max_hp
// 
// with( tile_randomizer_obj )
// {
// 	randomize()
// 	seed = random_get_seed()
// 	cur_area = 0
// }
// 
// var player = instance_find( player_obj,0 )
// player.room_x = 0
// player.room_y = 0
// player.visited_rooms = ds_map_create()
// player.x = 128
// player.y = 104
// for( var i = 0; i < array_length_1d( player.items ); ++i )
// {
// 	player.items[i] = noone
// }
// player.item_count = 0
// player.coin_count = 0
// instance_destroy( item_base )

audio_stop_all()

reset_all()

audio_play_sound( button_click_sfx,0,false )

room_goto( config_room )

// game_start()