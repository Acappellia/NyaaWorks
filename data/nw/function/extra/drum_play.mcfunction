execute store result score #chords_play_type nw run random value 1..2

playsound block.note_block.basedrum block @a ~ ~ ~ 1 0
playsound block.note_block.basedrum block @a ~ ~ ~ 1 1
execute if score #chords_play_type nw matches 1 run playsound block.note_block.snare block @a ~ ~ ~ 1 0
execute if score #chords_play_type nw matches 2 run playsound block.note_block.snare block @a ~ ~ ~ 1 2