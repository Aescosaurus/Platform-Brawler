move_freq = random_range( 0.1,0.3 ) * 60.0
dir = -1
spd = random_range( 5,19 )

explode_chance = 0.6
explode_count = 20

alarm_set( 0,move_freq )

ouch_sfx_min = 0.6
ouch_sfx_max = 0.8
alarm_set( 1,1 )

alarm_set( 11,5.0 * 24.0 )