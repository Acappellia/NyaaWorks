execute store result score #chords_play_type nw run random value 1..3

execute if score #chords_play_type nw matches 1 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.414214
execute if score #chords_play_type nw matches 1 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.887749
execute if score #chords_play_type nw matches 1 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.059463

execute if score #chords_play_type nw matches 2 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.414214
execute if score #chords_play_type nw matches 2 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.887749
execute if score #chords_play_type nw matches 2 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.189207

execute if score #chords_play_type nw matches 3 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.059463
execute if score #chords_play_type nw matches 3 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.334840
execute if score #chords_play_type nw matches 3 run playsound block.note_block.guitar block @a ~ ~ ~ 1 1.587401