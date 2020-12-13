var total_dmg = other.damage

if( ( airborne && check_global( "double_air_dmg" ) ) ||
	( frozen && check_global( "double_frozen_dmg" ) ) )
{
	total_dmg += other.damage
}

if( check_global( "red_orb" ) ) total_dmg *= 1.25

hp -= total_dmg

instance_destroy( other )

if( check_global( "fireball_freeze" ) )
{
	var ice_cream = instance_find( ice_cream_obj,0 )
	ice_cream.frozen_enemy = self
	frozen = true
	with( ice_cream ) alarm_set( 0,2.0 * room_speed )
	
	spawn_particles( particle_spr,5,10,22,0,360,
		random_range( 30,45 ),noone,self )
}

var player = instance_find( player_obj,0 )
trigger_item_event( player.items,player.item_count,2,self )

if( hp < 1 )
{
	instance_destroy()
}