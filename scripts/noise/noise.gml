var nx = argument0
var ny = argument1
var seed = argument2

random_set_seed( seed )

var val = 0.0

for( var iy = 0; iy <= abs( ny ); ++iy )
{
	for( var ix = 0; ix <= abs( nx ); ++ix )
	{
		val = random_range( 0.0,1.0 )
	}
}

randomize()

return( val )