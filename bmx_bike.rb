require_relative 'tail_pack'

class BmxBike < GenericBike

  def initialize
    @tail_pack = TailPack.new
    @weekly_price = 70
    @daily_price = 20
    @hourly_price = 5
  end

  def prepare
    adjust_seat()
  end

  def adjust_seat
    puts "Adjusting seat..."
  end

  def cost
    @weekly_price + @tail_pack.cost
  end

end
