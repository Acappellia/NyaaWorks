
execute store success score #check_tool nw if 

data remove storage nw:tmp tool 
data modify storage nw:tmp tool set from entity @s SelectedItem
execute store success score #check_tool nw run data modify storage nw:tmp tool.id set value "minecraft:wooden_hoe"