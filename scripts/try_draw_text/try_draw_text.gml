// Draws text without going outside the screen
var text = argument0

draw_set_font( pixel_font )
draw_set_color( c_white )
draw_set_halign( fa_left )

// var text_width = string_width( text )
// var diff1 = ( tx + text_width / 2 ) - room_width
// var diff2 = tx - text_width / 2 - 0
// if( diff1 > 0 )
// {
// 	tx -= diff1
// }
// else if( diff2 < 0 )
// {
// 	tx += diff2
// }

draw_text( 3,room_height - 11,text )