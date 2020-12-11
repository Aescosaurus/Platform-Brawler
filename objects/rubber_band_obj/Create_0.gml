event_inherited()

if( variable_global_exists( "fireball_bounce" ) )
{
	fake_global.fireball_bounce += 1
}
else
{
	fake_global.fireball_bounce = 1
}