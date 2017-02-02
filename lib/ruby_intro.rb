# When done, submit this entire file to the autograder.

# Part 1

# Takes an array of integers as an argument and returns the sum of its elements
# For an empty array it should return zero
def sum arr
  arr.inject(0, :+)
end

# Takes an array of integers as an argument and returns the sum of its two largest elements
# For an empty array it should return zero
# For an array with just one element, it should return that element
def max_2_sum arr
  if arr.empty?
    return 0
  end
  if arr.length.equal? 1 
    return arr.at(0)
  end
  map = arr.map
  arr2 = map.max(2)
  sum(arr2)
end

# Returns true if any two elements in the array of integers sum to n
def sum_to_n? arr, n
  if arr.combination(2).any? {|a, b| a + b == n }
    return true
  end
  return false
end

# Part 2

# Returns the string "Hello, " concatenated with the name
def hello(name)
  "Hello, " + name
end

# Returns true if it starts with a consonant and false otherwise
# Be sure it works for both upper and lower case and for nonletters
def starts_with_consonant? s
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

# Returns true if the string represents a binary number that is a multiple of 4
# Be sure it returns false if the string is not a valid binary number
def binary_multiple_of_4? s
  if s == "0"
    return true
  end 
  if s =~ /^[0-1]+$/ && s.to_i(2) % 4 == 0
    return true
  end
  return false
end

# Part 3

# Represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price
# Constructor should accept the ISBN number as the first argument and price as second argument
# Constructor should raise ArgumentError if the ISBN number is the empty string or if the price is less than or equal to zero
# Include the proper getters and setters for these attributes
# Include a method price_as_string that returns the price of the book formatted with a leading dollar sign and two decimal places
class BookInStock

# class variables: isbn and price
# attr_accessor automatically defines getters/setters 
attr_accessor :isbn
attr_accessor :price 

  # constructor
  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  # returns price of the book as a string
  def price_as_string
    "$#{format("%.2f", @price)}"
  end
  
end
