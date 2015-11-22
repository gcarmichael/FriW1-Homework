require 'pry-byebug'

WAREHOUSE = [
  {
    bay: "a10",
    item: "rubber band",
    distance: 1
  },
  {
    bay: "a9",
    item: "glow stick",
    distance: 2
  },
  {
    bay: "a8",
    item: "model car",
    distance: 3
  },
  {
    bay: "a7",
    item: "bookmark",
    distance: 4
  },
  {
    bay: "a6",
    item: "shovel",
    distance: 5
  },
  {
    bay: "a5",
    item: "rubber duck",
    distance: 6
  },
  {
    bay: "a4",
    item: "hanger",
    distance: 7
  },
  {
    bay: "a3",
    item: "blouse",
    distance: 8
  },
  {
    bay: "a2",
    item: "stop sign",
    distance: 9
  },
  {
    bay: "a1",
    item: "needle",
    distance: 10
  },
  {
    bay: "c1",
    item: "rusty nail",
    distance: 11
  },
  {
    bay: "c2",
    item: "drill press",
    distance: 12
  },
  {
    bay: "c3",
    item: "chalk",
    distance: 13
  },
  {
    bay: "c4",
    item: "word search",
    distance: 14
  },
  {
    bay: "c5",
    item: "thermometer",
    distance: 15
  },
  {
    bay: "c6",
    item: "face wash",
    distance: 16
  },
  {
    bay: "c7",
    item: "paint brush",
    distance: 17
  },
  {
    bay: "c8",
    item: "candy wrapper",
    distance: 18
  },
  {
    bay: "c9",
    item: "shoe lace",
    distance: 19
  },
  {
    bay: "c10",
    item: "leg warmers",
    distance: 20
  },
  {
    bay: "b1",
    item: "tyre swing",
    distance: 21
  },
  {
    bay: "b2",
    item: "sharpie",
    distance: 22
  },
  {
    bay: "b3",
    item: "picture frame",
    distance: 23
  },    
  {
    bay: "b4",
    item: "photo album",
    distance: 24
  },  
  {
    bay: "b5",
    item: "nail filer",
    distance: 25
  },
  {
    bay: "b6",
    item: "tooth paste",
    distance: 26
  },
  {
    bay: "b7",
    item: "bath fizzers",
    distance: 27
  },
  {
    bay: "b8",
    item: "tissue box",
    distance: 28
  },
  {
    bay: "b9",
    item: "deodorant",
    distance: 29
  },
  {
    bay: "b10",
    item: "cookie jar",
    distance: 30
}
]


def item_at_bay(bay)
  item = WAREHOUSE.find{|item| item[:bay] == bay}
  item[:item]
end

def bay_for_item(item)
  bay = WAREHOUSE.find{|bay| bay[:item] == item}
  bay[:bay]
end

def items_at_bays(*bay) #(bay1, bay2, bay3)
  # items = WAREHOUSE.select{ |item| item[:bay] == bay1 || item[:bay] == bay2 || item[:bay] == bay3 }
  # items.map{|item| item[:item]}.join(", ")
  bay.map!{|item| item = item_at_bay(item)}.join(", ")
  # bay.join(", ")
end

def bays_for_items(*item)
  item.map!{|bay| bay = bay_for_item(bay)}.join(", ")
end

# def furthest_distance(*bay)
#   items_at_bays(bay)
# end

def distance(bay1, bay2, bay3)
  location = WAREHOUSE.select{|item| item[:bay] == bay1 || item[:bay] == bay2 || item[:bay] == bay3}
    max = location.max_by{|item| item[:distance]}
    min = location.min_by{|item| item[:distance]}
    max[:distance]-min[:distance]

  # location_max = WAREHOUSE.select{|item| item[:bay] == bay1 || item[:bay] == bay2 || item[:bay] == bay3}
  #                         .max_by{|item| item[:distance]}
  # location_min = WAREHOUSE.select{|item| item[:bay] == bay1 || item[:bay] == bay2 || item[:bay] == bay3}
  #                         .min_by{|item| item[:distance]}
  # puts location_max
  # puts location_min
  # location_max[:distance] - location_min[:distance]

end

