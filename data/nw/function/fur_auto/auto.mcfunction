##check state & clone
scoreboard players operation #fur_state nw = @s fur_state

data remove storage nw:tmp fur_info

execute if score @s fur_id = @s fur_id run function nw:fur_auto/copydata
execute if score @s fur_id_buildin = @s fur_id_buildin run function nw:fur_auto/copydata_buildin

data remove storage nw:tmp auto_list
data modify storage nw:tmp auto_list set from storage nw:tmp auto_state.auto

##add cd
execute store result score @s fur_auto_cd run data get storage nw:tmp auto_state.auto_cd 1

##execute
execute if data storage nw:tmp auto_list[0] run function nw:fur_auto/checkeffect