
#define score_holder #check_block
scoreboard players reset #check_block nw
execute if predicate nw:is_holding_fur run scoreboard players set #check_block nw 1
execute if items entity @s weapon.offhand #nw:all_placeable run scoreboard players set #check_block nw 3
execute if items entity @s weapon.mainhand #nw:all_placeable run scoreboard players set #check_block nw 2

execute if score #check_block nw matches 1 run function nw:place_fur_use
execute if score #check_block nw matches 2..3 run function nw:block_place/place_block_use