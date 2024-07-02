#define score_holder #player_is_sneaking
scoreboard players reset #player_is_sneaking nw
execute as @p[distance=..6,tag=fur_user] if predicate nw:is_sneaking run scoreboard players set #player_is_sneaking nw 1
#NOT functioning rn bc sneak-cilck is returned before

execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_reset as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/reset
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_scale as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/scale
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_move_up as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/move_up
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_move_forward as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/move_forward
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_move_left as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/move_left
execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_rotate_yaw as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/rotate_yaw
#execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_rotate_pitch as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/rotate_pitch
#execute if data storage nw:tmp mainhand.components."minecraft:custom_data".nw_rotate_roll as @n[type=item_display,tag=nw_display,distance=..0.5] run function nw:fur_edit/rotate_roll