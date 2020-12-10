// door_chance = 0.8

randomize()
seed = random_get_seed()

cur_area = 3

wave_size = 5

room_count = 9
exit_count = 1
shop_count = 1
hard_count = 1
rogue_map = ds_map_create()
gen_rogue_map( room_count,exit_count,shop_count,hard_count )

var t = 0
tile_arr[t++] = red_tiles
tile_arr[t++] = blue_tiles
tile_arr[t++] = green_tiles
tile_arr[t++] = gold_tiles