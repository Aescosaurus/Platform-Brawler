var i = 0
items[i++] = magic_wand_obj
items[i++] = flame_spell_obj
items[i++] = noob_sword_obj
items[i++] = broken_wand_obj
items[i++] = blast_wand_obj


descs = ds_map_create()
descs[? magic_wand_obj] = "Shoots a fireball at the nearest enemy every 5 shots"
descs[? flame_spell_obj] = "Creates a flame explosion every 10 shots"
descs[? noob_sword_obj] = "Lobs a sword every 5 shots"
descs[? broken_wand_obj] = "Shoots a fireball backwards every 3 shots"
descs[? blast_wand_obj] = "Shoots an exploding fireball every 8 shots"