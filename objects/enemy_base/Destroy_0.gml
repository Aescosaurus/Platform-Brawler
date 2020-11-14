if( instance_number( enemy_base ) <= 1 )
{
	destroy_doors()
	
	instance_destroy( en_bullet_base )
	
	// if chance
	// maybe do fireworks or something when you get item?
	instance_create_layer( x,y,"instances",gen_rand_item() )
}