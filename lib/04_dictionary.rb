class Dictionary
  attr_accessor :entries

  def initialize(dictionary = {})
    @entries = dictionary
  end

  def empty?
    @entries.empty?
  end


  
end
