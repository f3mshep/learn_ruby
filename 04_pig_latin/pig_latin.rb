#write your code here
def pig_word(word)
  vowels = ["a","e","i","o","u"]
  capitalized = false
  until vowels.include?(word[0])
      if word[0] == word[0].upcase
        capitalized = true
      end
      if word[0].downcase == "q" && word[1].downcase == "u"
        word = word[2..-1] + word[0] + word[1]
      else
        word = word[1..-1] + word[0]
      end
  end
  if capitalized == true
    return word.capitalize + "ay"
  else
    return word + "ay"
  end
end

def translate(string)
res = []
  words = string.split(" ")
  words.each do |word|
    res << pig_word(word)
  end
  return res.join(" ")
end
