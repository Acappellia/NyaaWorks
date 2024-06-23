execute if items entity @s weapon.offhand #nw:all_3_axis run scoreboard players set #place_block_type nw 1
execute if items entity @s weapon.offhand #nw:all_4_faces run scoreboard players set #place_block_type nw 2
execute if items entity @s weapon.offhand #nw:all_6_faces run scoreboard players set #place_block_type nw 3
execute if items entity @s weapon.offhand #minecraft:stairs run scoreboard players set #place_block_type nw 4
execute if items entity @s weapon.offhand #minecraft:slabs run scoreboard players set #place_block_type nw 5
execute if items entity @s weapon.offhand #minecraft:trapdoors run scoreboard players set #place_block_type nw 6
execute if items entity @s weapon.offhand #minecraft:buttons run scoreboard players set #place_block_type nw 7
execute if items entity @s weapon.offhand #minecraft:banners run scoreboard players set #place_block_type nw 8
execute if items entity @s weapon.offhand #minecraft:signs run scoreboard players set #place_block_type nw 9
execute if items entity @s weapon.offhand #minecraft:hanging_signs run scoreboard players set #place_block_type nw 10
execute if items entity @s weapon.offhand vine run scoreboard players set #place_block_type nw 11
execute if items entity @s weapon.offhand glow_lichen run scoreboard players set #place_block_type nw 12
execute if items entity @s weapon.offhand sculk_vein run scoreboard players set #place_block_type nw 13
execute if items entity @s weapon.offhand #minecraft:skulls run scoreboard players set #place_block_type nw 14

execute if items entity @s weapon.offhand #nw:waterloggable run scoreboard players set #place_block_waterloggable nw 1

data modify storage nw:tmp block_place.block set from storage nw:tmp offhand.id
item modify entity @s[gamemode=!creative] weapon.offhand nw:remove_1