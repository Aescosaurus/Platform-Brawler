alarm_set( 2,refire2 )

var n_shots = 2
var rng_start = random_range( 0,360 )
for( var i = 0; i < n_shots; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = rng_start + ( 360 / n_shots ) * i
}