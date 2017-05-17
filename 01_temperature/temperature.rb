#write your code here
def ftoc(int)
  converter = 5.0 / 9.0
  ((int.to_f - 32) * converter).ceil
end

def ctof(int)
  converter = 9.0 / 5.0
  (int.to_f * converter + 32)
end
