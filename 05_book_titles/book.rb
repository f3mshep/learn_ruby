class Book
# write your code here
  def title
    @title
  end

  def title=(new_title)
    res = []
    little_words = ["and", "or","in","of", "a","an", "the"]
    words = new_title.split(" ")
    words.each.with_index do |word, idx|
      if idx == 0
        res << word.capitalize
      elsif little_words.include?(word)
        res << word
      else
        res << word.capitalize
      end
    end
    @title = res.join(" ")
  end



end
