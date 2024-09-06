##recover player data

execute store result score @s p_id run data get storage nc:player uuid_check[0].playerid
function nc:player_data/recover_scoreboard with storage nc:player uuid_check[0]

##update name
forceload add 1600 1600
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box{Items:[{Slot:0b,id:"player_head",count:1}]}
item modify block 1600 0 1600 container.0 nc:set_skull
data modify storage nc:player uuid_check[0].name set from block 1600 0 1600 Items[0].components."minecraft:profile".name
setblock 1600 0 1600 bedrock

function nc:player_data/update_data_name with storage nc:player uuid_check[0]