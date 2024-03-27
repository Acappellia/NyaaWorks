##check state & clone
scoreboard players operation #fur_state nw = @s fur_state
data remove storage nw:tmp auto_state
execute if score #fur_state nw matches 1 run data modify storage nw:tmp auto_state set from entity @e[type=item_display,tag=nw_display,distance=..0.5,sort=nearest,limit=1] item.components."minecraft:custom_data".state_a
execute if score #fur_state nw matches 2 run data modify storage nw:tmp auto_state set from entity @e[type=item_display,tag=nw_display,distance=..0.5,sort=nearest,limit=1] item.components."minecraft:custom_data".state_b
data remove storage nw:tmp auto_list
data modify storage nw:tmp auto_list set from storage nw:tmp auto_state.auto

##add cd
execute store result score @s fur_auto_cd run data get storage nw:tmp auto_state.auto_cd 1

##execute
execute if data storage nw:tmp auto_list[0] run function nw:fur_auto/checkeffect