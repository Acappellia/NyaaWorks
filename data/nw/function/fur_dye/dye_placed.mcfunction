execute unless score @s p_id = @p[distance=..10,tag=fur_user] p_id run tellraw @p[distance=..10,tag=fur_user] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 只有家具主人可为家具染色","color": "gray"}]
execute unless score @s p_id = @p[distance=..10,tag=fur_user] p_id run return -1

execute as @p[distance=..10,tag=fur_user,gamemode=!creative] run function nw:fur_dye/damage

data modify entity @e[type=item_display,tag=nw_display,distance=..0.5,sort=nearest,limit=1] item.components."minecraft:firework_explosion" set from storage nw:tmp mainhand.components."minecraft:firework_explosion"
particle dust{color:[1.000,1.000,1.000],scale:1} ~ ~ ~ 0.6 0.6 0.6 0 30 normal
playsound minecraft:item.brush.brushing.generic block @a ~ ~ ~ 1 1