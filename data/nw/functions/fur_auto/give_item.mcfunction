setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box
$data modify block 0 -64 0 Items append from storage nw:tmp auto_list[0].items[$(result)]
loot spawn ~ ~0.9 ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
setblock 0 -64 0 bedrock