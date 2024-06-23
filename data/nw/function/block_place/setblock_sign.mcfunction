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
data modify storage nw:tmp block_list set value ["minecraft:oak_sign","minecraft:spruce_sign","minecraft:birch_sign","minecraft:jungle_sign","minecraft:acacia_sign","minecraft:dark_oak_sign","minecraft:mangrove_sign","minecraft:cherry_sign","minecraft:bamboo_sign","minecraft:crimson_sign","minecraft:warped_sign"]
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[0] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "oak_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[1] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "spruce_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[2] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "birch_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[3] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "jungle_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[4] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "acacia_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[5] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "dark_oak_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[6] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "mangrove_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[7] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "cherry_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[8] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "bamboo_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[9] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "crimson_wall_sign"
execute store success score #check_block_success nw run data modify storage nw:tmp block_list[10] set from storage nw:tmp block_place.block
execute if score #check_block_success nw matches 0 run data modify storage nw:tmp block_place.block set value "warped_wall_sign"

function nw:block_place/setblock_4face_2_waterloggable with storage nw:tmp block_place