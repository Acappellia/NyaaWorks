##check fur_user
#define score_holder #dye_user
scoreboard players reset #dye_user nw
execute store result score #dye_user nw run function nw:fur_dye/check_user
execute unless score #dye_user nw matches 2 run function nw:fur_dye/user_invalid
execute unless score #dye_user nw matches 2 run return 1

execute as @p[distance=..10,tag=fur_user,gamemode=!creative] run function nw:fur_dye/damage

data modify entity @n[type=item_display,tag=nw_display,distance=..0.5] item.components."minecraft:firework_explosion" set from storage nw:tmp mainhand.components."minecraft:firework_explosion"
particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 0.6 0.6 0.6 0 30 normal
playsound minecraft:item.brush.brushing.generic block @a ~ ~ ~ 1 1