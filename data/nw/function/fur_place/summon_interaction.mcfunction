##width & height
data modify entity @s width set value 1.02
data modify entity @s height set value 1.02
execute if data storage nw:tmp fur_comp."minecraft:custom_data".state_a.istable run data modify entity @s height set value 1.009999

##score
execute store result score @s fur_auto_cd run data get storage nw:tmp fur_comp."minecraft:custom_data".state_a.auto_cd 1
scoreboard players set @s fur_state 1
execute if data storage nw:tmp fur_info.nw_fur_id store result score @s fur_id run data get storage nw:tmp fur_info.nw_fur_id
execute if data storage nw:tmp fur_info.nw_fur_id_buildin store result score @s fur_id_buildin run data get storage nw:tmp fur_info.nw_fur_id_buildin
scoreboard players operation @s p_id = @p[distance=..10,tag=fur_placer] p_id

##tag
tag @s add nw_fur
execute if data storage nw:tmp fur_comp."minecraft:custom_data".display_comp."minecraft:unbreakable" run tag @s add nw_admin
execute if data storage nw:tmp fur_comp."minecraft:custom_data".state_a.auto[0] run tag @s add nw_auto
execute if data storage nw:tmp fur_comp."minecraft:custom_data".state_a.interaction[0] run tag @s add nw_action