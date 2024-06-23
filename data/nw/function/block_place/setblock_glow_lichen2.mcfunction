execute if score #player_rotation nw matches -44..45 run setblock ~ ~ ~ glow_lichen[south=true,waterlogged=true]
execute if score #player_rotation nw matches 46..135 run setblock ~ ~ ~ glow_lichen[west=true,waterlogged=true]
execute if score #player_rotation nw matches 136.. run setblock ~ ~ ~ glow_lichen[north=true,waterlogged=true]
execute if score #player_rotation nw matches ..-135 run setblock ~ ~ ~ glow_lichen[north=true,waterlogged=true]
execute if score #player_rotation nw matches -134..-45 run setblock ~ ~ ~ glow_lichen[east=true,waterlogged=true]

execute if score #player_pitch nw matches 45.. run setblock ~ ~ ~ glow_lichen[down=true,waterlogged=true]
execute if score #player_pitch nw matches ..-45 run setblock ~ ~ ~ glow_lichen[up=true,waterlogged=true]