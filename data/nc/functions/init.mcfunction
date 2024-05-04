#define storage nc:tmp
#define storage nc:player

scoreboard objectives add nc dummy

##random number
# Create scoreboard objective and initialise LCG
scoreboard objectives add random dummy
execute unless score #lcg random = #lcg random store result score #lcg random run seed

# Define constants
scoreboard players set #lcg_a random 1630111353
scoreboard players set #lcg_c random 1623164762
scoreboard players set #lcg_m random 2147483647

##player id
scoreboard objectives add p_id dummy 
#define score_holder #player_id
execute unless score #player_id nc = #player_id nc run scoreboard players set #player_id nc -1

##force load
forceload add 0 0 0 0

##tick
schedule function nc:20gt_tick 20t replace