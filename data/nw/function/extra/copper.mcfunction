execute unless items entity @s weapon.mainhand #nw:copper_blocks run return run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 手持非完全氧化的铜块进行氧化","color": "gray"}]

playsound block.copper.step block @a ~ ~ ~ 1 1

execute if items entity @s weapon.mainhand copper_block run summon item ~ ~1 ~ {Motion:[0.0,0.2,0.0],Item:{id:"exposed_copper",count:1}}
execute if items entity @s weapon.mainhand exposed_copper run summon item ~ ~1 ~ {Motion:[0.0,0.2,0.0],Item:{id:"weathered_copper",count:1}}
execute if items entity @s weapon.mainhand weathered_copper run summon item ~ ~1 ~ {Motion:[0.0,0.2,0.0],Item:{id:"oxidized_copper",count:1}}

item modify entity @s weapon.mainhand nc:remove_1