class RoadBike < GenericBike

  def initialize(bag)
    @bag = bag
    @daily_rate = 15
  end

  def prepare
    lubricate_gears()
  end  

  def lubricate_gears
    puts "Lubricating gears..."
  end
  
  def cost
    bag_cost = 0
    @bag.each do |n|
	  bag_cost = bag_cost + n.price
	end
	bag_cost + (@daily_rate * 7)
  end 

  def daily_rate
    @daily_rate
  end

  def pack
    @bag
  end

end
