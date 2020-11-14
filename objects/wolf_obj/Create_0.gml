event_inherited()
hp = 2

// dir = choose( -1,1 )
// image_xscale = dir
// move_speed = random_range( 28,32 ) - 8

refire = random_range( 0.3,0.7 ) * 60.0
alarm_set( 0,random_range( 0,refire ) )

attack_range = 64 * 2

// player = instance_find( player_obj,0 )
jump_pow = 70
jump_pow_x = 60
decay = jump_pow * 0.3