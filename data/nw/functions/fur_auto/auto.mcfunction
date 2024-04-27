##check state & clone
scoreboard players operation #fur_state nw = @s fur_state

data remove storage nw:tmp fur_info
execute store result storage nw:tmp fur_info.nw_fur_id int 1 run scoreboard players get @s fur_id

function nw:fur_auto/clone_auto_state with storage nw:tmp fur_info

data remove storage nw:tmp auto_list
data modify storage nw:tmp auto_list set from storage nw:tmp auto_state.auto

##add cd
execute store result score @s fur_auto_cd run data get storage nw:tmp auto_state.auto_cd 1

##execute
execute if data storage nw:tmp auto_list[0] run function nw:fur_auto/checkeffect