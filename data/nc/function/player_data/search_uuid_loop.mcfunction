##search uuid loop

#define score_holder #search_uuid_check

##check the current id
execute store success score #search_uuid_check nc run data modify storage nc:tmp search.check_UUID set from storage nc:tmp search.target_UUID
execute if score #search_uuid_check nc matches 0 run return 2

##move list top to bottom
data modify storage nc:player uuid_check append from storage nc:player uuid_check[0]
data remove storage nc:player uuid_check[0]

##get current id again
data modify storage nc:tmp search.check_UUID set from storage nc:player uuid_check[0].UUID

##check if looped a full cucle
execute store success score #search_uuid_check nc run data modify storage nc:tmp search.check_UUID set from storage nc:tmp search.init_UUID
data modify storage nc:tmp search.check_UUID set from storage nc:player uuid_check[0].UUID
execute if score #search_uuid_check nc matches 0 run return -1

##loop
execute store result score #search_result nc run function nc:player_data/search_uuid_loop