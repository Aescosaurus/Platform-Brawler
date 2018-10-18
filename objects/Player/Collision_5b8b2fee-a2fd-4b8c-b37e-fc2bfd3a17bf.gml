/// @description Take damage if this is not your own bullet.

if( other.playerTeam != myDevice )
{
	instance_destroy( other,true )
	hp -= 1
	if( hp < 1 )
	{
		RespawnPlayer( id )
	}
}