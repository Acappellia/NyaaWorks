##check validity
#define score_holder #place_inwater
scoreboard players reset #place_inwater
execute if block ~ ~ ~ #nw:air_blocks_replace run scoreboard players set #place_inwater nw 0
execute if block ~ ~ ~ #nw:waterloggable_blocks_replace[waterlogged=false] run scoreboard players set #place_inwater nw 0
execute if block ~ ~ ~ #nw:water_blocks_replace run scoreboard players set #place_inwater nw 1
execute if block ~ ~ ~ #nw:waterloggable_blocks_replace[waterlogged=true] run scoreboard players set #place_inwater nw 1

execute unless score #place_inwater nw matches 0..1 run return -1
execute if entity @e[distance=..0.1,type=interaction,tag=nw_fur] run return -1

##effects
playsound block.stone.place block @a ~ ~ ~

##check hands
#define score_holder #place_block_type
scoreboard players reset #place_block_type
#define score_holder #place_block_waterloggable
scoreboard players reset #place_block_waterloggable
data remove storage nw:tmp block_place
execute if score #check_block nw matches 2 run function nw:block_place/place_mainhand
execute if score #check_block nw matches 3 run function nw:block_place/place_offhand

##replace block
execute unless score #place_block_type nw matches 0.. unless score #place_block_waterloggable nw matches 1 run function nw:block_place/setblock with storage nw:tmp block_place
execute unless score #place_block_type nw matches 0.. if score #place_block_waterloggable nw matches 1 run function nw:block_place/setblock_waterloggable with storage nw:tmp block_place
execute if score #place_block_type nw matches 1 run function nw:block_place/setblock_3axis
execute if score #place_block_type nw matches 2 run function nw:block_place/setblock_4face
execute if score #place_block_type nw matches 3 run function nw:block_place/setblock_6face
execute if score #place_block_type nw matches 4 run function nw:block_place/setblock_stair
execute if score #place_block_type nw matches 5 run function nw:block_place/setblock_slab
execute if score #place_block_type nw matches 6 run function nw:block_place/setblock_trapdoor