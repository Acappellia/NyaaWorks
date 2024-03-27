advancement revoke @s only nw:place_water

#define score_holder #place_inwater
scoreboard players set #place_inwater nw 1
execute anchored eyes positioned ^ ^ ^0.1 run function nw:fur_place/ray