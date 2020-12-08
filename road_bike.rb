require_relative 'pannier'

class RoadBike < GenericBike

  def initialize
    @panniers = [Pannier.new, Pannier.new]
    @daily_rate = 15
  end

  def prepare
    lubricate_gears()
  end  

  def lubricate_gears
    puts "Lubricating gears..."
  end
  
  def cost
    panniers[0].price + panniers[1].price + (@daily_rate * 7)
  end 

  def panniers
    @panniers
  end

  def daily_rate
    @daily_rate
  end

end
