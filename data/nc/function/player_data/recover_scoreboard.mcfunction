##recover old scores

$scoreboard players operation @s ng_daily_streak = $(name) ng_daily_streak
$scoreboard players operation @s ng_daily_remain = $(name) ng_daily_remain
$scoreboard players operation @s ng_daily_id = $(name) ng_daily_id

$scoreboard players reset $(name) ng_daily_streak
$scoreboard players reset $(name) ng_daily_remain
$scoreboard players reset $(name) ng_daily_id