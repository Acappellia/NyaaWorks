data modify storage nc:backup_11 uuid_check set from storage nc:player uuid_check
data modify storage nc:backup_11 players set from storage nc:player players
execute store result storage nc:backup_11 backup_time long 1 run time query gametime
execute store result storage nc:backup_11 current_pid int 1 run scoreboard players get #player_id nc