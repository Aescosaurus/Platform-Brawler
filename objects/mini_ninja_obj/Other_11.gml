var player = instance_find( player_obj,0 )
for( var i = 0; i < 8; ++i )
{
	var shot = instance_create_layer( player.x,player.y,"instances",star_obj )
	
	shot.direction = random_range( 0,360 )
}