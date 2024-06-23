##get facing
#define score_holder #player_rotation
execute store result score #player_rotation nw run data get entity @s Rotation[0] 1
#define score_holder #player_pitch
execute store result score #player_pitch nw run data get entity @s Rotation[1] 1

execute if score #place_inwater nw matches 1 run function nw:block_place/setblock_sculk_vein2
execute if score #place_inwater nw matches 1 run return 1

execute if score #player_rotation nw matches -44..45 run setblock ~ ~ ~ sculk_vein[south=true]
#execute if score #player_rotation nw matches -44..45 run data modify storage nw:tmp block_place.axis set value "z"
execute if score #player_rotation nw matches 46..135 run setblock ~ ~ ~ sculk_vein[west=true]
#execute if score #player_rotation nw matches 46..135 run data modify storage nw:tmp block_place.axis set value "x"
execute if score #player_rotation nw matches 136.. run setblock ~ ~ ~ sculk_vein[north=true]
#execute if score #player_rotation nw matches 136.. run data modify storage nw:tmp block_place.axis set value "z"
execute if score #player_rotation nw matches ..-135 run setblock ~ ~ ~ sculk_vein[north=true]
#execute if score #player_rotation nw matches ..-135 run data modify storage nw:tmp block_place.axis set value "z"
execute if score #player_rotation nw matches -134..-45 run setblock ~ ~ ~ sculk_vein[east=true]
#execute if score #player_rotation nw matches -134..-45 run data modify storage nw:tmp block_place.axis set value "x"

execute if score #player_pitch nw matches 45.. run setblock ~ ~ ~ sculk_vein[down=true]
#execute if score #player_pitch nw matches 45.. run data modify storage nw:tmp block_place.axis set value "y"
execute if score #player_pitch nw matches ..-45 run setblock ~ ~ ~ sculk_vein[up=true]
#execute if score #player_pitch nw matches ..-45 run data modify storage nw:tmp block_place.axis set value "y"
#execute if score #player_pitch nw matches ..-1 run data modify storage nw:tmp block_place.half set value "top"
#execute if score #player_pitch nw matches ..-1 run data modify storage nw:tmp block_place.type set value "top"
#execute if score #player_pitch nw matches 0.. run data modify storage nw:tmp block_place.half set value "bottom"
#execute if score #player_pitch nw matches 0.. run data modify storage nw:tmp block_place.type set value "bottom"