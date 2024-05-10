execute positioned ~ ~-0.6 ~ if entity @p[distance=..0.1] run return -1
execute unless entity @e[type=item_display,distance=..0.2,tag=nw_chair] run summon item_display ~ ~ ~ {Tags:["nw_chair"]}
ride @s mount @e[type=item_display,distance=..0.2,tag=nw_chair,limit=1]