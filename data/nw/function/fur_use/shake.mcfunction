##change rotation
data merge entity @s {interpolation_duration:1,start_interpolation:-1,transformation:[-996, 87, 0, 0, 0, 0, 1000, 0, 87, 996, 0, 0, 0, 0, 0, 2000],item_display:"fixed"}
tag @s add shake_s1
schedule function nw:fur_use/shake_2 2t replace
playsound minecraft:item.armor.equip_generic block @a ~ ~0.5 ~ 0.5 1