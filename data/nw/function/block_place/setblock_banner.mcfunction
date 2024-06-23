##get facing
#define score_holder #player_rotation
execute store result score #player_rotation nw run data get entity @s Rotation[0] 1
#define score_holder #player_pitch
execute store result score #player_pitch nw run data get entity @s Rotation[1] 1

execute if score #player_rotation nw matches -44..45 run data modify storage nw:tmp block_place.facing set value "north"
#execute if score #player_rotation nw matches -44..45 run data modify storage nw:tmp block_place.axis set value "z"
execute if score #player_rotation nw matches 46..135 run data modify storage nw:tmp block_place.facing set value "east"
#execute if score #player_rotation nw matches 46..135 run data modify storage nw:tmp block_place.axis set value "x"
execute if score #player_rotation nw matches 136.. run data modify storage nw:tmp block_place.facing set value "south"
#execute if score #player_rotation nw matches 136.. run data modify storage nw:tmp block_place.axis set value "z"
execute if score #player_rotation nw matches ..-135 run data modify storage nw:tmp block_place.facing set value "south"
#execute if score #player_rotation nw matches ..-135 run data modify storage nw:tmp block_place.axis set value "z"
execute if score #player_rotation nw matches -134..-45 run data modify storage nw:tmp block_place.facing set value "west"
#execute if score #player_rotation nw matches -134..-45 run data modify storage nw:tmp block_place.axis set value "x"

#execute if score #player_pitch nw matches 45.. run data modify storage nw:tmp block_place.facing set value "up"
#execute if score #player_pitch nw matches 45.. run data modify storage nw:tmp block_place.axis set value "y"
#execute if score #player_pitch nw matches ..-45 run data modify storage nw:tmp block_place.facing set value "down"
#execute if score #player_pitch nw matches ..-45 run data modify storage nw:tmp block_place.axis set value "y"
#execute if score #player_pitch nw matches ..-1 run data modify storage nw:tmp block_place.half set value "top"
#execute if score #player_pitch nw matches ..-1 run data modify storage nw:tmp block_place.type set value "top"
#execute if score #player_pitch nw matches 0.. run data modify storage nw:tmp block_place.half set value "bottom"
#execute if score #player_pitch nw matches 0.. run data modify storage nw:tmp block_place.type set value "bottom"


#define score_holder #check_block_success
data modify storage nw:tmp block_list set value ["minecraft:white_banner","minecraft:light_gray_banner","minecraft:gray_banner","minecraft:black_banner","minecraft:brown_banner","minecraft:red_banner","minecraft:orange_banner","minecraft:yellow_banner","minecraft:lime_banner","minecraft:green_banner","minecraft:cyan_banner","minecraft:light_blue_banner","minecraft:blue_banner","minecraft:purple_banner","minecraft:magenta_banner","minecraft:pink_banner"]
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[0] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "white_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[1] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "light_gray_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[2] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "gray_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[3] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "black_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[4] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "brown_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[5] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "red_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[6] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "orange_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[7] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "yellow_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[8] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "lime_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[9] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "green_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[10] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "cyan_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[11] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "light_blue_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[12] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "blue_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[13] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "purple_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[14] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "magenta_wall_banner"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[15] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "pink_wall_banner"

function nw:block_place/setblock_4face_2 with storage nw:tmp block_place