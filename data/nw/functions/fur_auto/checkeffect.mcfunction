#define score_holder #effect_type
execute store result score #effect_type nw run data get storage nw:tmp auto_list[0].type 1

execute if score #effect_type nw matches 0 run function nw:fur_auto/particle with storage nw:tmp auto_list[0]
execute if score #effect_type nw matches 1 run function nw:fur_use/sound with storage nw:tmp auto_list[0]
execute if score #effect_type nw matches 2 run function nw:fur_auto/tellraw
execute if score #effect_type nw matches 3 run function nw:fur_auto/effect
execute if score #effect_type nw matches 4 run function nw:fur_auto/damage with storage nw:tmp auto_list[0]
execute if score #effect_type nw matches 5 run function nw:fur_auto/give
execute if score #effect_type nw matches 8 run function nw:fur_use/command with storage nw:tmp auto_list[0]
execute if score #effect_type nw matches 11 run function nw:fur_auto/switch

##loop
data remove storage nw:tmp auto_list[0]
execute if data storage nw:tmp auto_list[0] run function nw:fur_auto/checkeffect