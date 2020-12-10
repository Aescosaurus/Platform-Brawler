if( !ouch_frames && !invul_frames &&
	( !variable_global_exists( "player_cloak" ) || global.player_cloak ) )
{
	// --hp and knockback and invul time
	--hp
	if( global.chal5 ) hp = 0
	
	var x_diff = other.x - x
	
	ouch_xvel = -sign( x_diff ) * knockback_x
	ouch_yvel = -knockback_y
	
	jumping = false
	grav = 0.0
	
	ouch_frames = true
	invul_frames = true
	alarm_set( 1,ouch_dur )
	
	trigger_item_event( items,item_count,1,other )
}