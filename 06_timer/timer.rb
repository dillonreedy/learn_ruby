class Timer
  #write your code here
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remainder = @seconds.modulo(3600)
    return sprintf("%02d:%02d:%02d", hours, remainder/60, remainder.modulo(60))
  end

end
