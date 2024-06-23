#define score_holder #effect_type
execute store result score #effect_type nw run data get storage nw:tmp interaction_list[0].type 1

execute if score #effect_type nw matches 0 run function nw:fur_use/particle with storage nw:tmp interaction_list[0]
execute if score #effect_type nw matches 1 run function nw:fur_use/sound with storage nw:tmp interaction_list[0]
execute if score #effect_type nw matches 2 run function nw:fur_use/tellraw
execute if score #effect_type nw matches 3 run function nw:fur_use/effect
execute if score #effect_type nw matches 4 run function nw:fur_use/damage with storage nw:tmp interaction_list[0]
execute if score #effect_type nw matches 5 run function nw:fur_use/give
execute if score #effect_type nw matches 6 run function nw:fur_use/clear
execute if score #effect_type nw matches 7 run function nw:fur_use/tp with storage nw:tmp interaction_list[0].dest
execute if score #effect_type nw matches 8 run function nw:fur_use/command with storage nw:tmp interaction_list[0]
execute if score #effect_type nw matches 9 run function nw:fur_use/cooldown
execute if score #effect_type nw matches 10 run function nw:fur_use/cooldown
execute if score #effect_type nw matches 11 as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_use/switch
execute if score #effect_type nw matches 12 positioned ~ ~0.4 ~ run function nw:fur_use/sit_half
execute if score #effect_type nw matches 13 positioned ~ ~0.9 ~ run function nw:fur_use/sit_full
execute if score #effect_type nw matches 14 as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_use/rotate_c
execute if score #effect_type nw matches 15 as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_use/rotate_cc

##loop
data remove storage nw:tmp interaction_list[0]
execute if data storage nw:tmp interaction_list[0] run function nw:fur_use/checkeffect