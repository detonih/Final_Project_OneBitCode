class Timer 

  attr_reader :time

  def determine_time

  @time = Time.now

  @time.strftime('%d-%m-%y_%H:%M%p')
  
  end


end