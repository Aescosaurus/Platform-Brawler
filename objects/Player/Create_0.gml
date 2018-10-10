/// @description init vars

moveSpeed = 2
tilemap = layer_tilemap_get_id( "TileLayer" )
myDevice = 0 // Also like which player I am.

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