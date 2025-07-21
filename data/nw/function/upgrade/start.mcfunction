data remove storage nw:updated fur
data remove storage nw:to_update fur
data modify storage nw:to_update fur set from storage nw:fur_data fur

execute if data storage nw:to_update fur[0] run function nw:upgrade/loop

data modify storage nw:fur_data fur set from storage nw:updated fur
data remove storage nw:updated fur

function nw:init_buildin_data
execute unless score #disable_noti nw matches 1.. run tellraw @a [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 数据已更新至当前游戏版本","color": "white"}]