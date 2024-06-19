data modify storage nc:backup_9 uuid_check set from storage nc:player uuid_check
data modify storage nc:backup_9 players set from storage nc:player players
execute store result storage nc:backup_9 backup_time long 1 run time query gametime
execute store result storage nc:backup_9 current_pid int 1 run scoreboard players get #player_id nc