execute unless items entity @s weapon.mainhand #nw:concrete_powder run return run tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 手持混凝土粉末进行固化","color": "gray"}]

playsound item.bucket.empty block @a ~ ~ ~ 1 1
data modify storage nw:tmp item_info.count set from entity @s SelectedItem.count

function nw:extra/concrete_give with storage nw:tmp item_info

item replace entity @s weapon.mainhand with air