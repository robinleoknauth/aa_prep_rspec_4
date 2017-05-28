class Dictionary
  attr_accessor :entries

  def initialize(dictionary = {})
    @entries = dictionary
  end

  def empty?
    @entries.empty?
  end

  def add(input)
    if input.class == String
      @entries[input] = nil
    elsif input.class == Hash
      @entries.merge!(input)
    end
  end

  def find(input)
    @entries.select {|k, v| k.include?(input) }
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    keywords.include?(word)
  end

  def printable
    result = []

    @entries.sort_by{ |k, v| k }.each do |k, v|
      result << "[#{k}] \"#{v}\""
    end

    result.join("\n")
  end

end
