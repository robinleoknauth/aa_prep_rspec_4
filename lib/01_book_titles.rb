class Book
  attr_accessor :title

  def title
    non_cap_words = %w(and in the of a an)
    arr = []

    @title.split.each_with_index do |word, i|
      if non_cap_words.include?(word) && i != 0
        arr << word
      else
        arr << word.capitalize
      end
    end
    arr.join(" ")
  end

end
