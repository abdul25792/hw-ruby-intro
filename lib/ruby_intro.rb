# When done, submit this entire file to the autograder.

# Part 1

# Takes array as argument and returns sum of elements in the array
def sum arr
  arr.inject(0,:+)
end

# Takers array as argument and returns sum of two largest elements 
def max_2_sum arr
  sum = 0
  count = 0
  arr.sort.reverse_each{
    |i|
    count += 1
    break if count > 2
    sum += i
  }
  return sum
end
  
#  Takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n
def sum_to_n? arr, n
  arr.sort!
  arr.each{
    |i|
     if (arr.index(n-i) != nil && ((n-i) != i || arr.count(i) > 1))
       return true
     end
   }
   return false
end



# Part 2

# Takes a string representing a name and returns the string "Hello, " concatenated with the name
def hello(name)
  return "Hello, "+ name
end

# Takes a string and returns true if it starts with a consonant and false otherwise
def starts_with_consonant? s
  if s == nil || s.length == 0
    return false
  end
   arr = ['a', 'e', 'i', 'o', 'u']
   a = s[0].downcase >=  'a' && s[0].downcase<= 'z' && arr.index(s[0].downcase) == nil
   return a
end

# Takes a string and returns true if the string represents a binary number that is a multiple of 4
def binary_multiple_of_4? s
  if s == "0" || s == "00"
    return true
  end
   if s.length == 0 || s == nil
     return false
   end
   for index in 0...s.length
     if s[index] != '0' && s[index] != '1'
       return false
     end
   end
   if s[-1] == '0' && s[-2] == '0'
     return true
   end
end



# Part 3


 class BookInStock
   def initialize(isbn, price)
     if isbn == nil || isbn.length == 0 || price <= 0
       raise ArgumentError
     end
     @isbn = isbn
     @price = price
   end
 
  #isbn setter
   def isbn=isbn
     if isbn == nil || isbn.length == 0
       raise ArgumentError
     end
     @isbn = isbn
   end
 
 #price setter
   def price=price
     if price <= 0
       raise ArgumentError
     end
     @price = price
   end
   
  #isbn getter
   def isbn
     return @isbn
   end
 
  # price getter
   def price
     return @price
   end
 
   def price_as_string
     return sprintf("$%.2f", @price)
   end
 end
# Part 1

def sum arr
  # YOUR CODE HERE
end

def max_2_sum arr
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
