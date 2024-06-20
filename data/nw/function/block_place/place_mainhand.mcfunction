execute if items entity @s weapon.mainhand #nw:all_3_axis run scoreboard players set #place_block_type nw 1
execute if items entity @s weapon.mainhand #nw:all_4_faces run scoreboard players set #place_block_type nw 2
execute if items entity @s weapon.mainhand #nw:all_6_faces run scoreboard players set #place_block_type nw 3
execute if items entity @s weapon.mainhand #minecraft:stairs run scoreboard players set #place_block_type nw 4
execute if items entity @s weapon.mainhand #minecraft:trapdoors run scoreboard players set #place_block_type nw 4
execute if items entity @s weapon.mainhand #minecraft:slabs run scoreboard players set #place_block_type nw 5

execute if items entity @s weapon.mainhand #nw:waterloggable run scoreboard players set #place_block_waterloggable nw 1

data modify storage nw:tmp block_place.block set from storage nw:tmp mainhand.id
item modify entity @s[gamemode=!creative] weapon.mainhand nw:remove_1