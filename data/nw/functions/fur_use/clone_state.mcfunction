data remove storage nw:tmp fur_state
$execute if score #fur_state nw matches 1 run data modify storage nw:tmp fur_state set from storage nw:fur_data fur[$(nw_fur_id)].display_comp."minecraft:custom_data".state_b
$execute if score #fur_state nw matches 2 run data modify storage nw:tmp fur_state set from storage nw:fur_data fur[$(nw_fur_id)].display_comp."minecraft:custom_data".state_a