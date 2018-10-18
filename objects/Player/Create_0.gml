/// @description init vars

moveSpeed = 2
tilemap = layer_tilemap_get_id( "TileLayer" )
myDevice = 0 // Also like which player I am.
if( !global.PLAYER_ONE_CONNECTED )
{
	myDevice = 0
	global.PLAYER_ONE_CONNECTED = true
}
else if( !global.PLAYER_TWO_CONNECTED )
{
	myDevice = 1
	global.PLAYER_TWO_CONNECTED = true
}
else if( !global.PLAYER_THREE_CONNECTED )
{
	myDevice = 2
	global.PLAYER_THREE_CONNECTED = true
}
else if( !global.PLAYER_FOUR_CONNECTED )
{
	myDevice = 3
	global.PLAYER_FOUR_CONNECTED = true
}

halfWidth = sprite_get_width( sprite_index ) / 2
halfHeight = sprite_get_height( sprite_index ) / 2

gravAcc = global.GRAVITY_ACCEL
grav = 0.0
jumping = false
jumpPower = 4
canJump = false
wallDir = 0

shotTimer = CreateTimer( 0.27 )
bulletMoveSpeed = 4.6

hp = 3