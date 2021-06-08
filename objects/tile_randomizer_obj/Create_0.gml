// door_chance = 0.8

randomize()
seed = random_get_seed()

cur_area = 1

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

var b = 0
bg_arr[b++] = bg_red_tiles
bg_arr[b++] = bg_blue_tiles
bg_arr[b++] = bg_green_tiles
bg_arr[b++] = bg_gold_tiles

var m = 0
mus_arr[m++] = level1_mus
mus_arr[m++] = level2_mus
mus_arr[m++] = level3_mus
mus_arr[m++] = boss_mus