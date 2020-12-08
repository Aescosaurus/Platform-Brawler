var spr = argument0
var spawn_range = argument1
var spd_min = argument2
var spd_max = argument3
var dir = argument4
var dir_variation = argument5
var n_particles = argument6
var target = argument7

for( var i = 0; i < n_particles; ++i )
{
	var rand_ang = random_range( 0.0,360.0 )
	var part = instance_create_layer(
		x + cos( rand_ang ) * random_range( 0.0,spawn_range ),
		y + sin( rand_ang ) * random_range( 0.0,spawn_range ),
		"instances",
		particle_obj )
	
	part.sprite_index = spr
	part.target = target
	
	var move_ang = dir + random_range( -dir_variation,dir_variation )
	part.x_vel = cos( move_ang ) * random_range( spd_min,spd_max )
	part.y_vel = sin( move_ang ) * random_range( spd_min,spd_max )
}