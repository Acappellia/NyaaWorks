#define score_holder #display_scale
execute store result score #display_scale nw run data get entity @s transformation.scale[0] 1000
execute unless score #player_is_sneaking nw matches 1 run scoreboard players operation #display_scale nw *= #2 nw
execute if score #player_is_sneaking nw matches 1 run scoreboard players operation #display_scale nw /= #2 nw
execute store result entity @s transformation.scale[0] float 0.001 store result entity @s transformation.scale[1] float 0.001 store result entity @s transformation.scale[2] float 0.001 run scoreboard players get #display_scale nw
playsound entity.item_frame.rotate_item block @a ~ ~ ~ 1 1
