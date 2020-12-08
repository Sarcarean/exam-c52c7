# As a customer,
# I want to estimate the cost of renting four bikes
#   for a week
# So that I know how much money I will need to pay

class GenericBike

  def prepare
    raise 'Prepare method not implemented!'
  end
  
  def clean
    puts "Cleaning..."
  end 
  
end


require_relative 'bmx_bike'
require_relative 'road_bike'
require_relative 'mountain_bike'

bikes = [
  BmxBike.new,
  RoadBike.new,
  MountainBike.new,
  MountainBike.new
]

total_price = 0
total_price += bikes[0].weekly_rate
total_price += bikes[0].tail_pack.cost
total_price += bikes[1].daily_rate * 7
total_price += bikes[1].panniers[0].price
total_price += bikes[1].panniers[1].price
total_price += bikes[2].weekly_rate
total_price += bikes[2].luggage.price
total_price += bikes[3].weekly_rate
total_price += bikes[3].luggage.price

puts "Total price: #{total_price}"
