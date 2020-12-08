var spr = argument0
var spawn_range = argument1
var spd_min = argument2
var spd_max = argument3
var dir = argument4
var dir_variation = argument5
var n_particles = argument6
var target = argument7
var spawn_obj = argument8

for( var i = 0; i < n_particles; ++i )
{
	var rand_ang = random_range( 0.0,360.0 )
	var part = instance_create_layer(
		spawn_obj.x + cos( rand_ang ) * random_range( 0.0,spawn_range ),
		spawn_obj.y + sin( rand_ang ) * random_range( 0.0,spawn_range ),
		"overlay",
		particle_obj )
	
	part.sprite_index = spr
	part.target = target
	
	var move_ang = degtorad( dir + random_range( -dir_variation,dir_variation ) )
	part.x_vel = cos( move_ang ) * random_range( spd_min,spd_max )
	part.y_vel = -sin( move_ang ) * random_range( spd_min,spd_max )
}