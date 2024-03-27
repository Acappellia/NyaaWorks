#define storage nw:tmp

forceload add 0 0 0 0

scoreboard objectives add nw dummy
scoreboard players set #10 nw 10

scoreboard objectives add fur_state dummy
scoreboard objectives add fur_auto_cd dummy
scoreboard objectives add fur_interaction_cd dummy
scoreboard objectives add fur_interaction_time dummy

scoreboard objectives add nw_player_cd minecraft.custom:time_since_death

schedule function nw:slowtick 20t replace