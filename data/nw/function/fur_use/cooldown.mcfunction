#define score_holder #cd_to_add
execute store result score #cd_to_add nw run data get storage nw:tmp interaction_list[0].time 1
scoreboard players operation @e[distance=..5,type=interaction,tag=interact_target,limit=1] fur_interaction_cd += #cd_to_add nw