tilemap = layer_tilemap_get_id( "tiles" )
width = tilemap_get_width( tilemap )
height = tilemap_get_height( tilemap )
tile_width = tilemap_get_tile_width( tilemap )
tile_height = tilemap_get_tile_height( tilemap )

door_chance = 0.7

randomize()
seed = random_get_seed()