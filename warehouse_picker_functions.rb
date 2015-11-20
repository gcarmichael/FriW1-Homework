require 'pry-byebug'

WAREHOUSE = [
  {
    bay: "a10",
    item: "rubber band"
  },
  {
    bay: "a9",
    item: "glow stick"
  },
  {
    bay: "a8",
    item: "model car"
  },
  {
    bay: "a7",
    item: "bookmark"
  },
  {
    bay: "a6",
    item: "shovel"
  },
  {
    bay: "a5",
    item: "rubber duck"
  },
  {
    bay: "a4",
    item: "hanger"
  },
  {
    bay: "a3",
    item: "blouse"
  },
  {
    bay: "a2",
    item: "stop sign"
  },
  {
    bay: "a1",
    item: "needle"
  },
  {
    bay: "c1",
    item: "rusty nail"
  },
  {
    bay: "c2",
    item: "drill press"
  },
  {
    bay: "c3",
    item: "chalk"
  },
  {
    bay: "c4",
    item: "word search"
  },
  {
    bay: "c5",
    item: "thermometer"
  },
  {
    bay: "c6",
    item: "face wash"
  },
  {
    bay: "c7",
    item: "paint brush"
  },
  {
    bay: "c8",
    item: "candy wrapper"
  },
  {
    bay: "c9",
    item: "shoe lace"
  },
  {
    bay: "c10",
    item: "leg warmers"
  },
  {
    bay: "b1",
    item: "tyre swing"
  },
  {
    bay: "b2",
    item: "sharpie"
  },
  {
    bay: "b3",
    item: "picture frame"
  },    
  {
    bay: "b4",
    item: "photo album"
  },  
  {
    bay: "b5",
    item: "nail filer"
  },
  {
    bay: "b6",
    item: "tooth paste"
  },
  {
    bay: "b7",
    item: "bath fizzers"
  },
  {
    bay: "b8",
    item: "tissue box"
  },
  {
    bay: "b9",
    item: "deodorant"
  },
  {
    bay: "b10",
    item: "cookie jar"
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
  bay.map!{|item| item = item_at_bay(item)}
  .join(", ")
  # bay.join(", ")
end

def bays_for_items(*item)
  item.map!{|bay| bay = bay_for_item(bay)}.join(", ")
end







