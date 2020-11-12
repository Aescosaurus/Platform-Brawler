if( ++cur_shot > shot_timer )
{
	cur_shot = 0
	
	var player = instance_find( player_obj,0 )
	instance_create_layer( player.x,player.y,"instances",sword_lob_obj )
}