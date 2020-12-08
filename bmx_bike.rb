class BmxBike < GenericBike

  def initialize(tail_pack)
    @tail_pack = tail_pack
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
    @weekly_price + @tail_pack.price
  end

end
