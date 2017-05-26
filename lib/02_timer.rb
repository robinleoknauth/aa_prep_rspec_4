class Timer
  attr_accessor :seconds

  def seconds
    0
  end

  def time_string
    seconds = add_zeros(@seconds % 60)
    minutes = add_zeros((@seconds / 60) % 60)
    hours = add_zeros((@seconds / 3600) % 60)
    "#{hours}:#{minutes}:#{seconds}"
  end

  def add_zeros(n)
    if n > 10
      n.to_s
    else
      "0#{n}"
    end
  end
  
end
