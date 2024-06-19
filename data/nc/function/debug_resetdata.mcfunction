data remove storage nc:player players
data remove storage nc:player uuid_check

scoreboard objectives remove p_id 
scoreboard objectives add p_id dummy
scoreboard players set #player_id nc -1