class MountainBike < GenericBike

  def initialize(bag)
    @bag = bag
    @weekly_rate = 90
    @daily_rate = 25
    @hourly_rate = 10
  end

  def prepare
    adjust_suspension()
  end  
  
  def adjust_suspension
    puts "Adjusting suspension..."
  end

  def cost
    @weekly_rate + @bag.price
  end 

  def pack
    @bag
  end
  
end
