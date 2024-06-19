item modify entity @s weapon.mainhand nw:brush_damage_1
execute if predicate nw:mainhand_no_damage at @s run playsound entity.item.break player @a ~ ~ ~
execute if predicate nw:mainhand_no_damage run item modify entity @s weapon.mainhand nw:remove_1