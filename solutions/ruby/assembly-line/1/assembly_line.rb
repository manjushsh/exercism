class AssemblyLine
  CARS_PER_HOUR = 221
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour

    if(@speed <= 4)
      return @speed * CARS_PER_HOUR
    elsif(@speed > 4 and @speed <=8)
      return (@speed * CARS_PER_HOUR) * 0.9
    elsif(@speed == 9)
      return (@speed * CARS_PER_HOUR) * 0.8
    else
      return (@speed * CARS_PER_HOUR) * 0.77
    end
  end

  def working_items_per_minute
    return (production_rate_per_hour/ 60).to_i
  end
end
