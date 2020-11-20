var player = instance_find( player_obj,0 )

target_x = player.max_hp * ( sprite_get_width( heart_spr ) + 2 ) + 2 + 2 +
	player.coin_count * ( sprite_width + 1 )
target_y = 2 + sprite_height / 2

cur_shot = 0

moving = true
x_vel = 27.0 * 0.6
y_vel = 22.0 * 0.6
vel_update_spd = 5 * 24

var part_spawn_count = 30
var spawn_range = 15
var part_explode_spd = 50
for( var i = 0; i < part_spawn_count; ++i )
{
	var rand_ang = random_range( 0.0,360.0 )
	var rand_x = cos( rand_ang )
	var rand_y = sin( rand_ang )
	var part = instance_create_layer( x + rand_x * random_range( 0.0,spawn_range ),
		y + rand_y * random_range( 0.0,spawn_range ),
		"instances",coin_particle_obj )
	part.target = self
	part.x_vel = rand_x * random_range( 0.0,part_explode_spd )
	part.y_vel = rand_y * random_range( 0.0,part_explode_spd )
}