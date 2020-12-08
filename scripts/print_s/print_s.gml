var msg = ""

for( var i = 0; i < argument_count; ++i )
{
	msg += string( argument[i] )
	
	if( i < argument_count - 1 ) msg += " -- "
}

print( msg )