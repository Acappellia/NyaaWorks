#define score_holder #check_placing
scoreboard players reset #check_placing nw
execute unless predicate nw:is_placing_fur run scoreboard players set #check_placing nw 0
execute if predicate nw:is_placing_fur run scoreboard players set #check_placing nw 1

execute if score #check_placing nw matches 0 run function nw:fur_use/use
execute if score #check_placing nw matches 1 at @s run function nw:place_fur_use