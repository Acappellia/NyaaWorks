execute if items entity @s weapon.mainhand #nw:all_3_axis run scoreboard players set #place_block_type nw 1
execute if items entity @s weapon.mainhand #nw:all_4_faces run scoreboard players set #place_block_type nw 2
execute if items entity @s weapon.mainhand #nw:all_6_faces run scoreboard players set #place_block_type nw 3
execute if items entity @s weapon.mainhand #minecraft:stairs run scoreboard players set #place_block_type nw 4
execute if items entity @s weapon.mainhand #minecraft:slabs run scoreboard players set #place_block_type nw 5
execute if items entity @s weapon.mainhand #minecraft:trapdoors run scoreboard players set #place_block_type nw 6
execute if items entity @s weapon.mainhand #minecraft:buttons run scoreboard players set #place_block_type nw 7
execute if items entity @s weapon.mainhand #minecraft:banners run scoreboard players set #place_block_type nw 8
execute if items entity @s weapon.mainhand #minecraft:signs run scoreboard players set #place_block_type nw 9
execute if items entity @s weapon.mainhand #minecraft:hanging_signs run scoreboard players set #place_block_type nw 10
execute if items entity @s weapon.mainhand vine run scoreboard players set #place_block_type nw 11
execute if items entity @s weapon.mainhand glow_lichen run scoreboard players set #place_block_type nw 12
execute if items entity @s weapon.mainhand sculk_vein run scoreboard players set #place_block_type nw 13
execute if items entity @s weapon.mainhand #minecraft:skulls run scoreboard players set #place_block_type nw 14

execute if items entity @s weapon.mainhand #nw:waterloggable run scoreboard players set #place_block_waterloggable nw 1

data modify storage nw:tmp block_place.block set from storage nw:tmp mainhand.id
item modify entity @s[gamemode=!creative] weapon.mainhand nw:remove_1