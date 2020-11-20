if( instance_number( enemy_base ) <= 1 )
{
	destroy_doors()
	
	instance_destroy( en_bullet_base )
	
	instance_create_layer( x,y,"instances",coin_obj )
	
	if( random_range( 0.0,1.0 ) < 0.08 )
	{
		instance_create_layer( x,y,"instances",gen_rand_item() )
	}
}