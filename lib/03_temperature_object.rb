class Temperature

  def initialize(temperature)
    if temperature.has_key?(:f)
      self.fahrenheit = temperature[:f]
    else
      self.celsius = temperature[:c]
    end
  end


  def self.ftoc(temp)
    (temp - 32) * (5.0 / 9)
  end

  def self.ctof(temp)
    (temp / (5.0 / 9)) + 32
  end

  def self.from_celsius(temperature)
    self.new(:c => temperature)
  end

  def self.from_fahrenheit(temperature)
    self.new(:f => temperature)
  end

  def in_fahrenheit
    self.class.ctof(@degrees)
  end

  def in_celsius
    @degrees
  end

  def celsius=(temperature)
    @degrees = temperature
  end

  def fahrenheit=(temperature)
    @degrees = self.class.ftoc(temperature)
  end

  class Celsius < Temperature
    def initialize(temp)
      super( { c: temp } )
    end
  end

  class Fahrenheit < Temperature
    def initialize(temp)
      super( { f: temp } )
    end
  end

end
