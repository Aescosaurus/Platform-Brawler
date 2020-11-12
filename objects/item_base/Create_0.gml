var player = instance_find( player_obj,0 )
x = 1 + player.item_count * 8 + sprite_width / 2
y = 8 + sprite_height / 2

player.items[player.item_count++] = self

cur_shot = 0