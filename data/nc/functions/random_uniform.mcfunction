# Calculate size of range
scoreboard players operation #size random = $max random
scoreboard players operation #size random -= $min random
scoreboard players add #size random 1

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg random *= #lcg_a random
scoreboard players operation #lcg random += #lcg_c random
scoreboard players operation #lcg random %= #lcg_m random

# Trim "low quality" bits
scoreboard players operation $out random = #lcg random
scoreboard players operation $out random /= #8 random

# Get within desired range
scoreboard players operation $out random %= #size random
scoreboard players operation $out random += $min random