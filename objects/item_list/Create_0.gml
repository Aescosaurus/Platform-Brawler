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
items[i++] = steel_bow_obj
items[i++] = rand_bow_obj
items[i++] = moth_bow_obj
items[i++] = blood_bow_obj
items[i++] = cloak_obj
items[i++] = bird_sword_obj
items[i++] = rubber_band_obj
items[i++] = cannon_obj
items[i++] = campfire_obj
items[i++] = mini_flame_obj
items[i++] = arrow_charm_obj
items[i++] = flame_dagger_obj
items[i++] = flame_sword_obj
items[i++] = quiver_obj
items[i++] = ice_sword_obj
items[i++] = ice_cube_obj
items[i++] = ice_cream_obj
items[i++] = wing_shoes_obj
items[i++] = red_orb_obj
items[i++] = yellow_orb_obj
items[i++] = green_orb_obj
items[i++] = blue_orb_obj
items[i++] = shuriken_obj
items[i++] = mini_ninja_obj
items[i++] = star_gun_obj
items[i++] = shooting_star_obj
items[i++] = ninja_beam_obj
items[i++] = lucky_dice_obj
items[i++] = metal_fist_obj
items[i++] = boxing_glove_obj


//                                  "This is the max length before it gets cut off"
descs = ds_map_create()
descs[? magic_wand_obj] =           "Fireballs the nearest enemy every 5 shots"
descs[? flame_spell_obj] =          "Creates a flame explosion every 10 shots"
descs[? noob_sword_obj] =           "Lobs a sword every 5 shots"
descs[? broken_wand_obj] =          "Shoots a fireball backwards every 3 shots"
descs[? blast_wand_obj] =           "Shoots a fire bomb every 8 shots"
descs[? ninja_star_obj] =           "Fireballs all enemies every 17 shots"
descs[? snow_spell_obj] =           "Freezes all enemies for 2s every 25 shots"
descs[? bullet_curtain_spell_obj] = "Ceiling rains fireballs every 22 shots"
descs[? spiky_armor_obj] =          "Deal 5 damage to enemies that touch you"
descs[? flame_armor_obj] =          "Create a flame explosion upon taking damage"
descs[? ice_armor_obj] =            "Freeze all enemies for 2s upon taking damage"
descs[? shield_obj] =               "Blocks the next damage you take"
descs[? reflect_bow_obj] =          "Shoots an arrow shotgun when you take damage"
descs[? flame_bow_obj] =            "Shoots an arrow shotgun every 17 shots"
descs[? steel_bow_obj] =            "Every 2 hits shoot an arrow"
descs[? rand_bow_obj] =             "Every 3 hits shoot an arrow at a random enemy"
descs[? moth_bow_obj] =             "Every 6 hits spawn an arrow explosion"
descs[? blood_bow_obj] =            "Shoot arrows at all enemies on taking damage"
descs[? cloak_obj] =                "Every 30 shots become invulnerable for 4s"
descs[? bird_sword_obj] =           "Deal double damage to airborne enemies"
descs[? rubber_band_obj] =          "Fireballs now bounce of walls 1 time"
descs[? cannon_obj] =               "You can now destroy enemy bullets"
descs[? campfire_obj] =             "Small fireball explosion every 8 shots"
descs[? mini_flame_obj] =           "Shoot a fire bomb on taking damage"
descs[? arrow_charm_obj] =          "Spawn arrow walls every 27 shots"
descs[? flame_dagger_obj] =         "Shoot a fireball on defeating enemies"
descs[? flame_sword_obj] =          "Shoot fire bomb every 3rd enemy defeated"
descs[? quiver_obj] =               "Shoot arrow shotgun every 3rd enemy defeated"
descs[? ice_sword_obj] =            "Every 5th hit freezes enemy for 2s"
descs[? ice_cube_obj] =             "Deal double damage to frozen enemies"
descs[? ice_cream_obj] =            "Fireballs freeze enemies"
descs[? wing_shoes_obj] =           "You can now control your jump height"
descs[? red_orb_obj] =              "25% more damage"
descs[? yellow_orb_obj] =           "25% faster fire rate"
descs[? green_orb_obj] =            "25% faster movement speed"
descs[? blue_orb_obj] =             "25% more jump height"
descs[? shuriken_obj] =             "Throw a star every 12 shots"
descs[? mini_ninja_obj] =           "On taking damage throw 8 stars randomly"
descs[? star_gun_obj] =             "Throw a star shotgun every 23 shots"
descs[? shooting_star_obj] =        "Every 15 shots create a mini star explosion"
descs[? ninja_beam_obj] =           "Every 20 shots throw 3 stars quickly"
descs[? lucky_dice_obj] =           "Throw a fist every 6-12 shots"
descs[? metal_fist_obj] =           "Throw a fist shotgun every 20 shots"
descs[? boxing_glove_obj] =         "Throw a fist to block the next damage"