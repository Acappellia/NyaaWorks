##search uuid

##init a marker & check current id
data modify storage nc:tmp search.check_UUID set from storage nc:player uuid_check[0].UUID
data modify storage nc:tmp search.init_UUID set from storage nc:player uuid_check[0].UUID

##if it has a value, enter loop
execute if data storage nc:tmp search.check_UUID store result score #search_result nc run function nc:player_data/search_uuid_loop