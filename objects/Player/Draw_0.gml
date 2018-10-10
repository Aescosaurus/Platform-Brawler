/// @description draw based on who you are

switch( myDevice )
{
	case 0: shader_set( Player1 ) break
	case 1: shader_set( Player2 ) break
	case 2: shader_set( Player3 ) break
	case 3: shader_set( Player4 ) break
}

draw_self()

shader_reset()