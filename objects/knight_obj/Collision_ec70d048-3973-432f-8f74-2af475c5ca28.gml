if( dir == 1 && abs( other.direction - 180 ) < angle_tolerance )
{
}
else if( dir == -1 && abs( other.direction ) < angle_tolerance )
{
}
else
{
	event_inherited()
}

instance_destroy( other,false )