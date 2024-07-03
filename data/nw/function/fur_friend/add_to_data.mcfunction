$data modify storage nc:player players[$(target_id)].friends.$(self_id) set value 1
$data modify storage nc:player players[$(self_id)].friends.$(target_id) set value 1

##tellraw
$tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "与玩家 ","color": "white"},{"nbt": "players[$(target_id)].name","storage": "nc:player","color": "yellow"},{"text": " 成为了好友!","color": "white"}]
$tellraw @p[scores={p_id=$(target_id)}] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "与玩家 ","color": "white"},{"selector": "@s", "color": "yellow"},{"text": " 成为了好友!","color": "white"}]