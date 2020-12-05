var tiles = argument0
var tx = argument1
var ty = argument2

var h_width = abs( sprite_width / 2 )
var h_height = abs( sprite_height / 2 )

return(
	tilemap_get_at_pixel( tiles,tx - h_width,ty - h_height ) <= 0 &&
	tilemap_get_at_pixel( tiles,tx + h_width,ty - h_height ) <= 0 &&
	tilemap_get_at_pixel( tiles,tx + h_width,ty + h_height ) <= 0 &&
	tilemap_get_at_pixel( tiles,tx - h_width,ty + h_height ) <= 0 )