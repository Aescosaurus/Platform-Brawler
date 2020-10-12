var nx = argument0
var ny = argument1
var seed = argument2

random_set_seed( seed )

var val = 0.0

for( var iy = -20; iy <= ny; ++iy )
{
	for( var ix = -20; ix <= nx; ++ix )
	{
		val = random_range( 0.0,1.0 )
	}
}

return( val )