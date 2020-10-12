var enemy_count = argument0

var list = instance_find( enemy_list,0 )
var enemies = array_create( enemy_count )
var level = get_difficulty()

// todo enemy layouts with maybe 1 strong enemy or more little enemies
for( var i = 0; i < enemy_count; ++i )
{
	if( level == 0 )
	{
		enemies[i] = list.starter[irandom_range( 0,array_length_1d( list.starter ) - 1 )]
	}
	else if( level == 1 )
	{
		enemies[i] = list.mid[irandom_range( 0,array_length_1d( list.mid ) - 1 )]
	}
	else if( level == 2 )
	{
		enemies[i] = list.hard[irandom_range( 0,array_length_1d( list.hard ) - 1 )]
	}
	else
	{
		enemies[i] = list.boss[irandom_range( 0,array_length_1d( list.boss ) - 1 )]
		break
	}
}

return( enemies )