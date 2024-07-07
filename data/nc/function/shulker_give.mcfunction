##give item
setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,count:1,id:"minecraft:stone"}]}
$data modify block 0 -64 0 Items[0].id set from storage nc:items $(type).id
$data modify block 0 -64 0 Items[0].count set from storage nc:items $(type).count
$data modify block 0 -64 0 Items[0].components set from storage nc:items $(type).components
loot spawn ~ ~ ~ mine 0 -64 0 stone[minecraft:custom_data={drop_contents:1}]
tag @s add item_owner
execute as @e[distance=..0.1,type=item] run data modify entity @s Owner set from entity @p[tag=item_owner,distance=..1] UUID
tag @s remove item_owner
setblock 0 -64 0 bedrock