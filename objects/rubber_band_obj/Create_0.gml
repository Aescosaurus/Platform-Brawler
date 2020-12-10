event_inherited()

if( variable_global_exists( "fireball_bounce" ) )
{
	global.fireball_bounce += 1
}
else
{
	global.fireball_bounce = 1
}