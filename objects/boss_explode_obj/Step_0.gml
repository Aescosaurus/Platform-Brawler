var dt = get_dt()

x += dir * spd * dt

if( random_range( 0.0,1.0 ) < explode_chance )
{
	instance_create_depth( x + random_range( -sprite_width / 1.5,sprite_width / 1.5 ),
		y + random_range( -sprite_width / 1.5,sprite_width / 1.5 ),
		-10,
		explode_obj )
}