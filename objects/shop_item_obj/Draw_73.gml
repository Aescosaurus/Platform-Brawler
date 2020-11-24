if( can_click )
{
	draw_set_color( c_white )
	draw_set_font( pixel_font )
	draw_set_halign( fa_center )
	draw_text( x,y + 6,"[E] buy" )
	
	draw_sprite( coin_spr,0,x - 5,y + 16 )
	draw_set_halign( fa_left )
	draw_text( x - 1,y + 13,"x" + string( cost ) )
}