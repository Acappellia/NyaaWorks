
#define score_holder #tool_sign_time
#define score_holder #tool_game_time
execute store result score #tool_sign_time nw run data get storage nw:tmp check_tool_id[0].sign_time
execute store result score #tool_game_time nw run time query gametime
scoreboard players operation #tool_game_time nw -= #tool_sign_time nw
execute if score #tool_game_time nw matches 0..432000 run function nw:fur_remove/remove