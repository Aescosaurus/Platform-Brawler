var total_dmg = other.damage

if( ( airborne && check_global( "double_air_dmg" ) ) ||
	( frozen && check_global( "double_frozen_dmg" ) ) )
{
	total_dmg += other.damage
}

if( check_global( "red_orb" ) ) total_dmg *= 1.25

hp -= total_dmg

instance_destroy( other )

var player = instance_find( player_obj,0 )
trigger_item_event( player.items,player.item_count,2,self )

if( hp < 1 )
{
	instance_destroy()
}