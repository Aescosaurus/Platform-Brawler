event_inherited()

if( can_click )
{
	draw_set_color( c_white )
	draw_set_font( pixel_font )
	draw_set_halign( fa_center )
	draw_text( x,y - 20,"[E] buy" )
	
	draw_sprite( coin_spr,0,x - 7,y - 9 )
	draw_set_halign( fa_left )
	draw_text( x - 3,y - 12,"x" + string( cost ) )
}