execute unless data storage nw:to_update fur[0].display_comp."minecraft:custom_data".display_comp."minecraft:item_name" run return -1

data modify storage nw:tmp testname set string storage nw:to_update fur[0].display_comp."minecraft:custom_data".display_comp."minecraft:item_name" 0 1
execute store result score #test_name nw run data modify storage nw:tmp testname set value "\""
execute if score #test_name nw matches 1.. run return -1

data modify storage nw:tmp testname set string storage nw:to_update fur[0].display_comp."minecraft:custom_data".display_comp."minecraft:item_name" -1
execute store result score #test_name nw run data modify storage nw:tmp testname set value "\""
execute if score #test_name nw matches 1.. run return -1

data modify storage nw:to_update fur[0].display_comp."minecraft:custom_data".display_comp."minecraft:item_name" set string storage nw:to_update fur[0].display_comp."minecraft:custom_data".display_comp."minecraft:item_name" 1 -1