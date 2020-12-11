event_inherited()

var prev_val = check_global( "fireball_bounce" )
if( prev_val > 0 )
{
	set_global( "fireball_bounce",prev_val + 1 )
}
else
{
	set_global( "fireball_bounce",1 )
}