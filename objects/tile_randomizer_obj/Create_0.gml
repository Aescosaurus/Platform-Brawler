// door_chance = 0.8

randomize()
seed = random_get_seed()

room_count = 9
exit_count = 1
shop_count = 1
hard_count = 1
rogue_map = ds_map_create()
gen_rogue_map( room_count,exit_count,shop_count,hard_count )

cur_area = 0

tile_arr[0] = red_tiles
tile_arr[1] = blue_tiles