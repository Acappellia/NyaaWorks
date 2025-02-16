#define storage nw:tmp
#define storage nw:fur_data
#define storage nw:fur_data_buildin

forceload add 1600 1600

scoreboard objectives add nw dummy
scoreboard players set #10 nw 10
scoreboard players set #12 nw 12
scoreboard players set #2 nw 2
scoreboard players set #214748 nw 214748
scoreboard players set #-3648 nw -3648
scoreboard players set #10000 nw 10000

scoreboard objectives add nw_version dummy
#define score_holder #nw_version
#define score_holder #current_version
scoreboard players set #current_version nw_version 20102
execute unless score #nw_version nw_version = #current_version nw_version run function nw:init_buildin_data
scoreboard players operation #nw_version nw_version = #current_version nw_version

#define score_holder #fur_id
execute unless score #fur_id nw matches -2147483648..2147483647 run scoreboard players set #fur_id nw -1

#define score_holder #allow_unsafe_placement
execute unless score #allow_unsafe_placement nw matches 0..1 run scoreboard players set #allow_unsafe_placement nw 1

#define score_holder #disable_noti
execute unless score #disable_noti nw matches 0..1 run scoreboard players set #disable_noti nw 0

#define score_holder #player_permission
execute unless score #player_permission nw matches 0..1 run scoreboard players set #player_permission nw 1

scoreboard objectives add fur_transfer_target dummy
scoreboard objectives add fur_transfer_target_buildin dummy

scoreboard objectives add fur_friend_id dummy

scoreboard objectives add fur_id dummy
scoreboard objectives add fur_id_buildin dummy
scoreboard objectives add fur_state dummy
scoreboard objectives add fur_auto_cd dummy
scoreboard objectives add fur_interaction_cd dummy
scoreboard objectives add fur_interaction_time dummy
scoreboard objectives add fur_rotation dummy

scoreboard objectives add nw_player_cd minecraft.custom:time_since_death
scoreboard objectives add nw_place_cd minecraft.custom:time_since_death

function nw:game_update

schedule function nw:slowtick 20t replace