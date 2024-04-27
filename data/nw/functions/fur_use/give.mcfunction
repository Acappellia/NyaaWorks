scoreboard players reset $max random
execute store result score $max random if data storage nw:tmp interaction_list[0].items[]
execute unless score $max random matches 1.. run return -1
scoreboard players remove $max random 1
scoreboard players set $min random 0
function nw:random_uniform
data remove storage nw:tmp random
execute store result storage nw:tmp random.result int 1 run scoreboard players get $out random

function nw:fur_use/give_item with storage nw:tmp random
