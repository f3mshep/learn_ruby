#write your code here
def add(int1, int2)
  int1 + int2
end

def subtract(int1, int2)
  int1 - int2
end

def sum(arr)
  if arr.empty?
    return 0
  end
  arr.reduce(:+)
end

def multiply(arr)
  if arr.empty?
    return 0
  end
  arr.reduce(:*)
end

def power(int,power)
  i = 0
  product = int
  while i < power
    product = product * int
    i += 1
  end
  product
end

def factorial(int)
if int == 0
  return 1
end
 arr = (1..int)
 arr.reduce(:*)
end
