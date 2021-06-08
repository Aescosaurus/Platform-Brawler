alarm_set( 0,refire )

x = my_tp_spot.x
y = my_tp_spot.y

// todo: spawn particles now

my_tp_spot.x = -9999

spawn_particles( particle_spr,sprite_width,8.2,18.2,0,360.0,random_range( 15,20 ),noone,self )

var n_shots = 8
for( var i = 1; i < n_shots; ++i )
{
	var bullet = instance_create_layer( x,y,"instances",en_bullet_obj )
	bullet.direction = ( 360 / n_shots ) * i
}

audio_play_sound( enemy_shoot2_sfx,0,false )

teleporting = false

alarm_set( 2,0 )