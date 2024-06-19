#define score_holder #display_translation
execute store result score #display_translation nw run data get entity @s transformation.translation[2] 100
execute unless score #player_is_sneaking nw matches 1 run scoreboard players remove #display_translation nw 10
execute if score #player_is_sneaking nw matches 1 run scoreboard players add #display_translation nw 10
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get #display_translation nw
playsound entity.item_frame.rotate_item block @a ~ ~ ~ 1 1