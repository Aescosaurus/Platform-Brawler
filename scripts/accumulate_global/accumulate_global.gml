// add 1 to global, 0->1->2 etc
var name = argument0

var val = check_global( name )
var to_set = -1
if( val )
{
	to_set = val + 1
}
else
{
	to_set = 1
}

set_global( name,to_set )