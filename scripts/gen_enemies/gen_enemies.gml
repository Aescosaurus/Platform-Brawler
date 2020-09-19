var enemy_count = argument0

var enemies = array_create( enemy_count )

// todo enemy layouts with maybe 1 strong enemy or more little enemies
for( var i = 0; i < enemy_count; ++i )
{
	enemies[i] = ghost_obj
}

return( enemies )