var i = 0
items[i++] = magic_wand_obj
items[i++] = flame_spell_obj
items[i++] = noob_sword_obj
items[i++] = broken_wand_obj
items[i++] = blast_wand_obj
items[i++] = ninja_star_obj
items[i++] = snow_spell_obj
items[i++] = bullet_curtain_spell_obj
items[i++] = spiky_armor_obj
items[i++] = flame_armor_obj
items[i++] = ice_armor_obj
items[i++] = shield_obj
items[i++] = reflect_bow_obj
items[i++] = flame_bow_obj


descs = ds_map_create()
descs[? magic_wand_obj] = "Fireballs the nearest enemy every 5 shots"
descs[? flame_spell_obj] = "Creates a flame explosion every 10 shots"
descs[? noob_sword_obj] = "Lobs a sword every 5 shots"
descs[? broken_wand_obj] = "Shoots a fireball backwards every 3 shots"
descs[? blast_wand_obj] = "Shoots an exploding fireball every 8 shots"
descs[? ninja_star_obj] = "Fireballs all enemies every 17 shots"
descs[? snow_spell_obj] = "Freezes all enemies for 2s every 25 shots"
descs[? bullet_curtain_spell_obj] = "Ceiling rains bullets every 22 shots"
descs[? spiky_armor_obj] = "Deal 5 damage to enemies that touch you"
descs[? flame_armor_obj] = "Create a flame explosion upon taking damage"
descs[? ice_armor_obj] = "Freeze all enemies for 2s upon taking damage"
descs[? shield_obj] = "Blocks the next damage you take"
descs[? reflect_bow_obj] = "Shoots a flame shotgun when you take damage"
descs[? flame_bow_obj] = "Shoots a flame shotgun every 17 shots"