data remove storage nw:tmp fur_state
$data modify storage nw:tmp fur_state set from storage nw:fur_data fur[$(nw_fur_transfer_target)].display_comp."minecraft:custom_data".state_a
$data modify storage nw:tmp fur_state.target.nw_fur_transfer_target set from storage nw:fur_data fur[$(nw_fur_transfer_target)].display_comp."minecraft:custom_data".nw_fur_transfer_target
$data modify storage nw:tmp fur_state.target.nw_fur_transfer_target_buildin set from storage nw:fur_data fur[$(nw_fur_transfer_target)].display_comp."minecraft:custom_data".nw_fur_transfer_target_buildin