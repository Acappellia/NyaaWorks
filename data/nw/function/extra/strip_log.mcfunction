execute unless items entity @s weapon.mainhand #nw:logs_to_strip run return run execute unless score #disable_noti nw matches 1.. run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 手持原木进行去皮","color": "gray"}]

playsound item.axe.strip block @a ~ ~ ~ 1 1
data modify storage nw:tmp item_info.count set from entity @s SelectedItem.count

function nw:extra/strip_log_give with storage nw:tmp item_info

item replace entity @s weapon.mainhand with air