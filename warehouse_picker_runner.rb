require_relative './warehouse_picker_functions'

#### SINGLE BAY/ITEM
# Given a bay, returns the item in that bay
found_item = item_at_bay('b5')
puts "item at b5 found is #{found_item}, expected nail filer"
puts "\n"

# # Given an item return the bay that it is in.
found_bay = bay_for_item('rubber band')
puts "rubber band is in bay #{found_bay}, expected a10"
puts "\n"

# #### MULTIPLE BAYS/ITEMS
# # Given a list of bays, list the items in those bays
found_items = items_at_bays('b5', 'b10', 'b6')
puts "the items in bays b5, b10, and b6 are #{found_items}; expected nail filer, cookie jar, and tooth paste"
puts "\n"

# # Given a list of items find the bays.
found_bays = bays_for_items('shoe lace', 'rusty nail', 'leg warmers')
puts "shoe lace, rusty nail and leg warmers were found in bays #{found_bays}; expected c1, c9 and c10"
puts "\n"

#### ADVANCED
# Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays.

# given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart
# furhtest_distance = furthest_distance('b5', 'b10', 'b6')
found_items = items_at_bays('b5', 'b10', 'b6')
max_distance = distance('b5', 'b10', 'b6')
puts "the items in bays b5, b10, and b6 are #{found_items}, and the distance between them is #{max_distance}; expected nail filer, cookie jar, and tooth paste, with distance 5"
puts "\n"









