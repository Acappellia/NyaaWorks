#define score_holder #bundle_count

scoreboard players reset #bundle_count nw
execute store result score #bundle_count nw if data storage nw:tmp auto_list[0].items[]
execute unless score #bundle_count nw matches 1.. run return -1
execute store result storage nw:tmp random.max int 1 run scoreboard players remove #bundle_count nw 1

data modify storage nw:tmp random.result set value 0
function nw:fur_use/give_random with storage nw:tmp random
function nw:fur_auto/give_item with storage nw:tmp random
