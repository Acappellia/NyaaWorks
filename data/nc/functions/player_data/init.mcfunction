##init player

#define score_holder #search_result

##check if player changed
data remove storage nc:tmp search
data modify storage nc:tmp search.target_UUID set from entity @s UUID
scoreboard players reset #search_result nc
execute store result score #search_result nc run function nc:player_data/search_uuid
execute if score #search_result nc matches 2 run function nc:player_data/recover_data
execute if score #search_result nc matches 2 run return 1

##add data in uuid_check
data modify storage nc:player uuid_check prepend value {}
data modify storage nc:player uuid_check[0].UUID set from storage nc:tmp search.target_UUID
execute store result score @s p_id store result storage nc:player uuid_check[0].playerid int 1 run scoreboard players add #player_id nc 1
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"minecraft:player_head",count:1}]}
item modify block 0 -64 0 container.0 nc:set_skull
data modify storage nc:player uuid_check[0].name set from block 0 -64 0 Items[0].components."minecraft:profile".name
setblock 0 -64 0 bedrock

##init data
data modify storage nc:player players append value {}
data modify storage nc:player players[-1].playerid set from storage nc:player uuid_check[0].playerid
data modify storage nc:player players[-1].name set from storage nc:player uuid_check[0].name
data modify storage nc:player players[-1].UUID set from storage nc:player uuid_check[0].UUID