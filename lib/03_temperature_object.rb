class Temperature
  def self.ftoc(temp)
    (temp - 32) * (5.0 / 9)
  end

  def self.ctof(temp)
    (temp / (5.0 / 9)) + 32
  end


end
