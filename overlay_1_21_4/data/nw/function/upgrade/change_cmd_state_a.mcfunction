execute if data storage nw:to_update fur[0].display_comp."minecraft:custom_data".state_a.model.floats run return -1
execute unless data storage nw:to_update fur[0].display_comp."minecraft:custom_data".state_a.model run return -1

data modify storage nw:tmp cmd_to_update set value {floats:[0.0f]}
execute store result storage nw:tmp cmd_to_update.floats[0] float 1 run data get storage nw:to_update fur[0].display_comp."minecraft:custom_data".state_a.model
data modify storage nw:to_update fur[0].display_comp."minecraft:custom_data".state_a.model set from storage nw:tmp cmd_to_update