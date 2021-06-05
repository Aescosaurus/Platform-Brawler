var total_dmg = other.damage

if( ( airborne && check_global( "double_air_dmg" ) ) ||
	( freezing_dur > 0.0 && check_global( "double_frozen_dmg" ) ) )
{
	total_dmg += other.damage
}

if( check_global( "red_orb" ) ) total_dmg *= 1.25

hp -= total_dmg

instance_destroy( other )

if( other.object_index == fireball_obj && check_global( "fireball_freeze" ) )
{
	var ice_cream = instance_find( ice_cream_obj,0 )
	// ice_cream.frozen_enemy = self
	// frozen = true
	freezing_dur += ice_cream.freeze_duration
	// with( ice_cream ) alarm_set( 0,2.0 * room_speed )
	
	spawn_particles( particle_spr,5,10,22,315,70,
		random_range( 30,45 ),noone,self )
}

// if( variable_instance_exists( other,"knockback" ) )
{
	knockback = true
	knockback_xvel = sign( x - other.x ) * other.knockback
	knockback_yvel = -other.knockback
	alarm_set( 11,knockback_dur )
}

var player = instance_find( player_obj,0 )
trigger_item_event( player.items,player.item_count,2,self )

if( hp < 1 )
{
	audio_play_sound( enemy_ouch_sfx,0,false )
	instance_destroy()
}
else audio_play_sound( enemy_hit1_sfx,0,false )