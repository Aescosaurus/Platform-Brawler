draw_set_color( c_white )
draw_set_font( pixel_font )
draw_set_halign( fa_left )

if( hover )
{
	if( unlocked ) draw_text( 5,107,text )
	else draw_text( 5,107,"Beat game with previous challenges to unlock!" )
}

if( !unlocked )
{
	draw_sprite( lock_spr,0,x,y )
}