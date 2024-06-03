##register item
execute store result storage nw:tmp fur_info.nw_fur_id_buildin byte 1 store result storage nw:tmp new_fur_item."minecraft:custom_data".nw_fur_id_buildin byte 1 if data storage nw:fur_data_buildin fur[]
data modify storage nw:tmp new_fur_display_components."minecraft:custom_data".nw_fur_id_buildin set from storage nw:tmp fur_info.nw_fur_id_buildin

##add default color
data modify storage nw:tmp new_fur_item."minecraft:firework_explosion" set value {shape:"small_ball",colors:[I;16777215]}

##append data
data modify storage nw:fur_data_buildin fur append value {}
data modify storage nw:fur_data_buildin fur[-1].fur_id_buildin set from storage nw:tmp fur_info.nw_fur_id_buildin
data modify storage nw:fur_data_buildin fur[-1].display_comp set from storage nw:tmp new_fur_display_components

tellraw @s [{"text": "[","color": "white"},{"text": "NyaaWorks","color": "#22aaff"},{"text": "]","color": "white"},{"text": " 已在内置区创建测试家具 #","color": "yellow"},{"nbt":"fur_info.nw_fur_id_buildin","storage": "nw:tmp","color": "white"}]