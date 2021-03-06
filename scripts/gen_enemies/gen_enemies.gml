var enemy_count = argument0
var pick_variety = argument1

var list = instance_find( enemy_list,0 )
var enemies = array_create( enemy_count )
var level = get_difficulty()

var picks = array_create( pick_variety )

for( var i = 0; i < pick_variety; ++i )
{
	if( level == 0 )
	{
		picks[i] = list.starter[irandom_range( 0,array_length_1d( list.starter ) - 1 )]
	}
	else if( level == 1 )
	{
		picks[i] = list.mid[irandom_range( 0,array_length_1d( list.mid ) - 1 )]
	}
	else if( level == 2 )
	{
		picks[i] = list.hard[irandom_range( 0,array_length_1d( list.hard ) - 1 )]
	}
	else
	{
		picks[i] = list.boss[irandom_range( 0,array_length_1d( list.boss ) - 1 )]
	}
}

// todo enemy layouts with maybe 1 strong enemy or more little enemies
for( var i = 0; i < enemy_count; ++i )
{
	enemies[i] = picks[irandom_range( 0,array_length_1d( picks ) - 1 )]
}

return( enemies )