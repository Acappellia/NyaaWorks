##width & height
data modify entity @s width set value 1.02
data modify entity @s height set value 1.02
execute if data storage nw:tmp fur_comp."minecraft:custom_data".state_a.istable run data modify entity @s height set value 1.009999

##score
execute store result score @s fur_auto_cd run data get storage nw:tmp fur_comp."minecraft:custom_data".state_a.auto_cd 1
scoreboard players set @s fur_state 1

##tag
tag @s add nw_fur
execute if data storage nw:tmp fur_comp."minecraft:unbreakable" run tag @s add nw_admin
execute if data storage nw:tmp fur_comp."minecraft:custom_data".state_a.auto[0] run tag @s add nw_auto