$data remove storage nc:player players[$(target_id)].friends.$(self_id)
$data remove storage nc:player players[$(self_id)].friends.$(target_id)

##tellraw
$tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"text": "已解除与玩家 ","color": "gray"},{"nbt": "players[$(target_id)].name","storage": "nc:player","color": "gray"},{"text": " 的好友权限","color": "white"}]
$tellraw @p[scores={p_id=$(target_id)}] [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "] ","color": "white"},{"selector": "@s", "color": "gray"},{"text": " 已解除和你的好友权限","color": "white"}]