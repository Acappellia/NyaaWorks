#define score_holder #block_check
execute store result score #block_check nw run function nw:fur_place/block_check
execute if score #block_check nw matches 1 align xyz positioned ~0.5 ~ ~0.5 run function nw:fur_place/place
execute if score #block_check nw matches 2 align xyz positioned ~0.5 ~1 ~0.5 run function nw:fur_place/place
execute if score #block_check nw matches 3 align xyz positioned ~0.5 ~-1 ~0.5 run function nw:fur_place/place
execute if score #block_check nw matches 4 align xyz positioned ~1.5 ~ ~0.5 run function nw:fur_place/place
execute if score #block_check nw matches 5 align xyz positioned ~-0.5 ~ ~0.5 run function nw:fur_place/place
execute if score #block_check nw matches 6 align xyz positioned ~0.5 ~ ~1.5 run function nw:fur_place/place
execute if score #block_check nw matches 7 align xyz positioned ~0.5 ~ ~-0.5 run function nw:fur_place/place
execute unless score #block_check nw matches 1.. if entity @s[distance=..10] positioned ^ ^ ^1 run function nw:fur_place/ray
#execute if entity @s[distance=10..] run function nw:fur_place/fail