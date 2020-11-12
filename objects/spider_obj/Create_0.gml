event_inherited()

// dir = choose( -1,1 )
// image_xscale = dir
// move_speed = random_range( 28,32 ) - 8

refire = random_range( 0.6,1.3 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

attack_range = 64 * 2

// player = instance_find( player_obj,0 )
jump_pow = 50
decay = jump_pow * 0.3