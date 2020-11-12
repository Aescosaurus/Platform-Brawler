player_obj.hp = player_obj.max_hp
global.time_scale = 1.0

with( tile_randomizer_obj )
{
	randomize()
	seed = random_get_seed()
}

var player = instance_find( player_obj,0 )
player.room_x = 0
player.room_y = 0
player.visited_rooms = ds_map_create()
for( var i = 0; i < array_length_1d( player.items ); ++i )
{
	player.items[i] = noone
}
player.item_count = 0
instance_destroy( item_base )

room_goto( menu_room )

game_start()