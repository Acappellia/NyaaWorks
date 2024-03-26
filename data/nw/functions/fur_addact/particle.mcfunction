data modify storage nw:tmp interation_to_add.type set value 0
data modify storage nw:tmp interation_to_add.particletype set value "end_rod"
data modify storage nw:tmp interation_to_add.particletype set from storage nw:tmp interation_item.components."minecraft:custom_data".particletype
data modify storage nw:tmp interation_to_add.isprecise set from storage nw:tmp interation_item.components."minecraft:custom_data".isprecise