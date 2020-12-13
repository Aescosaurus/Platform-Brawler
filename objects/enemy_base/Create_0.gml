tilemap = layer_tilemap_get_id( "tiles" )

h_width = sprite_width / 2
h_height = sprite_height / 2

grav_acc = 0.26 * 25.0 * 25.0
grav = 0.0

x_vel = 0.0
y_vel = 0.0

hp = 1

image_index = random_range( 0,image_number )

airborne = false
frozen = false

knockback = false
knockback_dur = 0.5 * room_speed
knockback_xvel = 0.0
knockback_yvel = 0.0