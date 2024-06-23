##get rotation
#define score_holder #player_rotation
execute store result score #player_rotation nw run data get entity @s Rotation[0] 1

execute if score #player_rotation nw matches -11..11 run data modify storage nw:tmp block_place.rotation set value 0
execute if score #player_rotation nw matches 12..33 run data modify storage nw:tmp block_place.rotation set value 1
execute if score #player_rotation nw matches 34..56 run data modify storage nw:tmp block_place.rotation set value 2
execute if score #player_rotation nw matches 57..78 run data modify storage nw:tmp block_place.rotation set value 3
execute if score #player_rotation nw matches 79..101 run data modify storage nw:tmp block_place.rotation set value 4
execute if score #player_rotation nw matches 102..123 run data modify storage nw:tmp block_place.rotation set value 5
execute if score #player_rotation nw matches 124..146 run data modify storage nw:tmp block_place.rotation set value 6
execute if score #player_rotation nw matches 147..168 run data modify storage nw:tmp block_place.rotation set value 7
execute if score #player_rotation nw matches 169.. run data modify storage nw:tmp block_place.rotation set value 8
execute if score #player_rotation nw matches ..-169 run data modify storage nw:tmp block_place.rotation set value 8
execute if score #player_rotation nw matches -168..-147 run data modify storage nw:tmp block_place.rotation set value 9
execute if score #player_rotation nw matches -146..-124 run data modify storage nw:tmp block_place.rotation set value 10
execute if score #player_rotation nw matches -123..-102 run data modify storage nw:tmp block_place.rotation set value 11
execute if score #player_rotation nw matches -101..-79 run data modify storage nw:tmp block_place.rotation set value 12
execute if score #player_rotation nw matches -78..-57 run data modify storage nw:tmp block_place.rotation set value 13
execute if score #player_rotation nw matches -56..-34 run data modify storage nw:tmp block_place.rotation set value 14
execute if score #player_rotation nw matches -33..-12 run data modify storage nw:tmp block_place.rotation set value 15

function nw:block_place/setblock_skull_2 with storage nw:tmp block_place