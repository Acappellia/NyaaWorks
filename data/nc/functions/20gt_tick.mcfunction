##add player id
execute as @a unless score @s p_id matches 0.. run function nc:player_data/init

schedule function nc:20gt_tick 20t replace