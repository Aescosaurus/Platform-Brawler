event_inherited()
desc = item_list.descs[? object_index]

var player = instance_find( player_obj,0 )

target_x = 1 + player.item_count * 8 + sprite_width / 2
target_y = 8 + sprite_height / 2

player.items[player.item_count++] = self

cur_shot = 0

moving = true
x_vel = 27.0
y_vel = 22.0
vel_update_spd = 5 * 24

var part_spawn_count = 50
var spawn_range = 15
var part_explode_spd = 50
spawn_particles( particle_spr,spawn_range,
	0.0,part_explode_spd,
	0.0,360.0,
	part_spawn_count,self,self )
// for( var i = 0; i < part_spawn_count; ++i )
// {
// 	var rand_ang = random_range( 0.0,360.0 )
// 	var rand_x = cos( rand_ang )
// 	var rand_y = sin( rand_ang )
// 	var part = instance_create_layer( x + rand_x * random_range( 0.0,spawn_range ),
// 		y + rand_y * random_range( 0.0,spawn_range ),
// 		"instances",particle_obj )
// 	part.target = self
// 	part.x_vel = rand_x * random_range( 0.0,part_explode_spd )
// 	part.y_vel = rand_y * random_range( 0.0,part_explode_spd )
// }

evt_data = noone