# As a customer,
# I want to estimate the cost of renting four bikes for a week
# So that I know how much money I will need to pay

require_relative 'generic_bike'
require_relative 'bmx_bike'
require_relative 'road_bike'
require_relative 'mountain_bike'
require_relative 'tail_pack'
require_relative 'pannier'
require_relative 'roll_pack'

bikes = [
  BmxBike.new(TailPack.new),
  RoadBike.new([Pannier.new, Pannier.new]),
  MountainBike.new(RollPack.new),
  MountainBike.new(RollPack.new)
]

total_price = 0
bikes.each do |n|
  n.prepare
  total_price +=  n.cost
end

puts "Total price: #{total_price}"
