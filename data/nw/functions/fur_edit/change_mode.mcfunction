#define score_holder #tmp_color
execute store result score #tmp_color nw run data get entity @s item.components."minecraft:firework_explosion".colors[0]
data modify entity @s item.id set value "minecraft:leather_horse_armor"
execute store result entity @s item.components."minecraft:dyed_color".rgb int 1 run scoreboard players get #tmp_color nw
playsound entity.item_frame.rotate_item block @a ~ ~ ~ 1 1