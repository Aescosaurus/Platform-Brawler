if( !ouch_frames && !invul_frames && !check_global( "player_cloak" ) && hp > 0 )
{
	audio_play_sound( player_ouch_sfx,0,false )
	audio_play_sound( player_ouch2_sfx,0,false )
	
	// --hp and knockback and invul time
	hp -= 1
	if( check_global( "chal5" ) ) hp = 0
	
	if( hp < 1 ) audio_play_sound( player_oof_sfx,0,false )
	
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