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
puts "shoe lace, rusty nail and leg warmers were found in bays #{found_bays}; expected c9, c1 and c10"
puts "\n"

#### ADVANCED
# Given a list of bays, list the items in those bays, and calculate the distance from the two furthest apart bays.

# given "b5, b10, and b6", determine that the products are "nail filer, cookie jar, and tooth paste", and they're five bays apart
found_items2 = items_at_bays('b5', 'b10', 'b6')
max_distance = distance3('b5', 'b10', 'b6')
puts "the items in bays b5, b10, and b6 are #{found_items2}, and the distance between them is #{max_distance}; expected nail filer, cookie jar, and tooth paste, with distance 5"
puts "\n"
# given "b3, c7, c9 and a3", determine that the products are "picture frame, paint brush, shoe lace, and blouse", and they're 15 bays apart
found_items2 = items_at_bays('b3', 'c7', 'c9', 'a3')
max_distance = distance4('b3', 'c7', 'c9', 'a3')
puts "the items in bays b3, c7, c9 and a3 are #{found_items2}, and the distance between them is #{max_distance}; expected picture frame, paint brush, and shoe lace and blouse, with distance 15"
puts "\n"

# Given a list of products, find the bays that need to be visited, and order them in the order they need to be visited from entrance to exit.

# given "shoe lace, rusty nail, leg warmers", determine that those items need to be collected from "c1, c9, and c10"
found_bays2 = bays_for_items('shoe lace', 'rusty nail', 'leg warmers')
order_to_pick = order3('shoe lace', 'rusty nail', 'leg warmers')
puts "shoe lace, rusty nail and leg warmers were found in bays #{found_bays2}; expected c9, c1 and c10, and should be visited in order #{order_to_pick}; expected c1, c9 and c10"
puts "\n"
# given "hanger, deodorant, candy wrapper, rubber band", determine that those items need to be collected from "a10, a4, c8, and b9"
found_bays2 = bays_for_items('hanger', 'deodorant', 'candy wrapper', 'rubber band')
order_to_pick = order4('hanger', 'deodorant', 'candy wrapper', 'rubber band')
puts "hanger, deodorant, candy wrapper and rubber band were found in bays #{found_bays2}; expected a4, b9, c8 and a10, and should be visited in order #{order_to_pick}; expected a10, a4, c8 and b9"

