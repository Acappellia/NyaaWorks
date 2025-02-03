execute unless score #nw_game_version nw matches 12104.. run function nw:upgrade/change_cmd

data modify storage nw:updated fur append from storage nw:to_update fur[0]
data remove storage nw:to_update fur[0]

execute if data storage nw:to_update fur[0] run function nw:upgrade/loop