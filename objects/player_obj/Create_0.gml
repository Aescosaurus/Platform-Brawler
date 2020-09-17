/// @description init vars

move_speed = 60.0
tilemap = layer_tilemap_get_id( "tiles" )

h_width = sprite_get_width( sprite_index ) / 2
h_height = sprite_get_height( sprite_index ) / 2

grav_acc = 0.26 * 25.0 * 25.0
grav = 0.0
jumping = false
jump_pow = 4 * 25
can_jump = false
wall_dir = 0

refire = 0.12 * 60.0
can_fire = false
alarm_set( 0,refire )
bullet_speed = 6.6

room_x = 10
room_y = 10