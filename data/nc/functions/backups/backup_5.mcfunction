data modify storage nc:backup_5 uuid_check set from storage nc:player uuid_check
data modify storage nc:backup_5 players set from storage nc:player players
execute store result storage nc:backup_5 backup_time long 1 run time query gametime
execute store result storage nc:backup_5 current_pid int 1 run scoreboard players get #player_id nc