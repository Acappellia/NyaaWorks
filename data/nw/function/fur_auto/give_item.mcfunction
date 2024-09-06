forceload add 100 100
setblock 1600 0 1600 bedrock
setblock 1600 0 1600 shulker_box
$data modify block 1600 0 1600 Items append from storage nw:tmp auto_list[0].items[$(result)]
loot spawn ~ ~1 ~ mine 1600 0 1600 stone[minecraft:custom_data={drop_contents:1}]
setblock 1600 0 1600 bedrock