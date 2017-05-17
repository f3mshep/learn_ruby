#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times = 2)
  i = 0
  res = ""
  while i < times
    if i == 0
      res = word
      i += 1
    else
      res = res + " " + word
      i += 1
    end
  end
  return res
end

def start_of_word(word, int)
  i = 0
  res = ""
  while i < int
    res << word[i]
    i += 1
  end
  return res
end

def first_word(string)
  string.split(" ")[0]
end

def titleize(string)
  words = string.split(" ")
  res = []
  words.each.with_index do |word,idx|
    if idx == 0
      res << word.capitalize
    else
      res << capital(word)
    end
  end
  return res.join(" ")
end

def capital(word)
  little_words = ["a","of", "and", "the", "over"]
  if little_words.include?(word)
    return word
  else
    return word.capitalize
  end
end
