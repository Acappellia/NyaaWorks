#define score_holder #effect_time
execute store result storage nw:tmp interaction_list[0].effects[0].duration int 1 run data get storage nw:tmp interaction_list[0].effects[0].duration 0.05
execute store result storage nw:tmp interaction_list[0].effects[0].amplifier int 1 run data get storage nw:tmp interaction_list[0].effects[0].amplifier 1
function nw:fur_auto/effect_apply with storage nw:tmp interaction_list[0].effects[0]

##loop
data remove storage nw:tmp interaction_list[0].effects[0]
execute if data storage nw:tmp interaction_list[0].effects[0] run function nw:fur_auto/effect_loop