event_inherited()

var player = instance_find( player_obj,0 )
move_dir = player.look_dir

var ang_height = 65
direction = ( move_dir > 0 ? 0 + ang_height : 180 - ang_height )
gravity = 0.5
speed = 5