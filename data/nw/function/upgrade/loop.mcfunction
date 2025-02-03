

data modify storage nw:updated fur append from storage nw:to_update fur[0]
data remove storage nw:to_update fur[0]

execute if data storage nw:to_update fur[0] run function nw:upgrade/loop