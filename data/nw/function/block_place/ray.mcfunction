#define score_holder #ray_can_place
scoreboard players reset #ray_can_place nw
execute positioned ^ ^ ^0.1 align xyz positioned ~0.5 ~ ~0.5 run function nw:block_place/check_block

execute if score #ray_can_place nw matches 1 align xyz positioned ~0.5 ~ ~0.5 run function nw:block_place/place
execute unless score #ray_can_place nw matches 1 if entity @s[distance=..5] positioned ^ ^ ^0.1 run function nw:block_place/ray