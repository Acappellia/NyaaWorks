execute if score #player_rotation nw matches -44..45 run setblock ~ ~ ~ sculk_vein[south=true,waterlogged=true]
execute if score #player_rotation nw matches 46..135 run setblock ~ ~ ~ sculk_vein[west=true,waterlogged=true]
execute if score #player_rotation nw matches 136.. run setblock ~ ~ ~ sculk_vein[north=true,waterlogged=true]
execute if score #player_rotation nw matches ..-135 run setblock ~ ~ ~ sculk_vein[north=true,waterlogged=true]
execute if score #player_rotation nw matches -134..-45 run setblock ~ ~ ~ sculk_vein[east=true,waterlogged=true]

execute if score #player_pitch nw matches 45.. run setblock ~ ~ ~ sculk_vein[down=true,waterlogged=true]
execute if score #player_pitch nw matches ..-45 run setblock ~ ~ ~ sculk_vein[up=true,waterlogged=true]