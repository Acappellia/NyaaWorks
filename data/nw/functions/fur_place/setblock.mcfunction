$execute if score #place_inwater nw matches 0 run setblock ~ ~ ~ $(block)[waterlogged=false]
$execute if score #place_inwater nw matches 1 run setblock ~ ~ ~ $(block)[waterlogged=true]