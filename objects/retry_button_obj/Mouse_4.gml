player_obj.hp = player_obj.max_hp
global.time_scale = 1.0

with( tile_randomizer_obj )
{
	randomize()
	seed = random_get_seed()
}

room_goto( menu_room )
game_start()