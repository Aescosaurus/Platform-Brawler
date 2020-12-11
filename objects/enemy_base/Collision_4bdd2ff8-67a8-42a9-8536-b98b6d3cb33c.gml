hp -= other.damage

if( airborne && check_global( "double_air_dmg" ) )
{
	hp -= other.damage
}

instance_destroy( other )

var player = instance_find( player_obj,0 )
trigger_item_event( player.items,player.item_count,2,self )

if( hp < 1 )
{
	instance_destroy()
}