#define storage nw:tmp
#define storage nw:fur_data
#define storage nw:fur_data_buildin

execute unless data storage nw:fur_data_buildin fur run function nw:init_buildin_data

forceload add 0 0 0 0

scoreboard objectives add nw dummy
scoreboard players set #10 nw 10
scoreboard players set #2 nw 2

#define score_holder #fur_id
execute unless score #fur_id nw matches -2147483648..2147483647 run scoreboard players set #fur_id nw -1

#define score_holder #allow_unsafe_placement
execute unless score #allow_unsafe_placement nw matches 0..1 run scoreboard players set #allow_unsafe_placement nw 1

scoreboard objectives add fur_transfer_target dummy
scoreboard objectives add fur_transfer_target_buildin dummy

scoreboard objectives add fur_id dummy
scoreboard objectives add fur_id_buildin dummy
scoreboard objectives add fur_state dummy
scoreboard objectives add fur_auto_cd dummy
scoreboard objectives add fur_interaction_cd dummy
scoreboard objectives add fur_interaction_time dummy
scoreboard objectives add fur_rotation dummy

scoreboard objectives add nw_player_cd minecraft.custom:time_since_death
scoreboard objectives add nw_place_cd minecraft.custom:time_since_death

schedule function nw:slowtick 20t replace