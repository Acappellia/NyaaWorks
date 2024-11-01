#define storage nc:backup_1
#define storage nc:backup_2
#define storage nc:backup_3
#define storage nc:backup_4
#define storage nc:backup_5
#define storage nc:backup_6
#define storage nc:backup_7
#define storage nc:backup_8
#define storage nc:backup_9
#define storage nc:backup_10
#define storage nc:backup_11
#define storage nc:backup_12
#define storage nc:backup_13
#define storage nc:backup_14

#define score_holder #backup_no

execute unless score #backup_no nc matches 2.. run function nc:backups/backup_1
execute if score #backup_no nc matches 2 run function nc:backups/backup_2
execute if score #backup_no nc matches 3 run function nc:backups/backup_3
execute if score #backup_no nc matches 4 run function nc:backups/backup_4
execute if score #backup_no nc matches 5 run function nc:backups/backup_5
execute if score #backup_no nc matches 6 run function nc:backups/backup_6
execute if score #backup_no nc matches 7 run function nc:backups/backup_7
execute if score #backup_no nc matches 8 run function nc:backups/backup_8
execute if score #backup_no nc matches 9 run function nc:backups/backup_9
execute if score #backup_no nc matches 10 run function nc:backups/backup_10
execute if score #backup_no nc matches 11 run function nc:backups/backup_11
execute if score #backup_no nc matches 12 run function nc:backups/backup_12
execute if score #backup_no nc matches 13 run function nc:backups/backup_13
execute if score #backup_no nc matches 14 run function nc:backups/backup_14

scoreboard players add #backup_no nc 1
execute if score #backup_no nc matches 15.. run scoreboard players set #backup_no nc 1

execute unless score #disable_noti nw matches 1.. run tellraw @a[gamemode=creative] [{"text": "[","color": "white"},{"text": "NyaaCore","color": "yellow"},{"text": "] ","color": "white"},{"text": " 玩家数据已备份","color": "gray"}]

schedule function nc:backup_tick 72d replace