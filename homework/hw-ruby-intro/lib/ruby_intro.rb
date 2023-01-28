# Avery Reichler
# 27 January 2023
# CS 5300 
# Homework 1, Section 1


# Part 1


# Add all integers in the array and return the sum
def sum arr

  # Init sum
  sum = 0

  # Loop through each element, adding as we go
  for val in arr do
    sum += val
  end
  return sum
end


# Return the sum of the two largest integers in the array
def max_2_sum arr
  
  # Check if the array is empty
  if arr.empty?
    return 0
  end

  # Check if the array has a single element
  if arr.length == 1
    return arr.first
  end

  # Sort the array, then return the sum of the last two elements
  sorted = arr.sort
  return sorted.pop + sorted.pop
end


# Return true if any two elements in arr sum to n
def sum_to_n? arr, n

  # Check if the array has too few elements
  if arr.length <= 1
    return false
  end

  # For each element, addendA, first to last
  iteratorA = 0
  for addendA in arr do

    # For each element, addendB, last to addendA
    iteratorB = arr.length - 1
    until iteratorA == iteratorB

      # Get addend B
      addendB = arr[iteratorB]

      # If addendA + addendB = n, a match was found
      if n == addendA + addendB
        return true
      end

      # Decrement iteratorB and get the prior addendB
      iteratorB -= 1
    end

    # Increment iteratorA and get the next addendA
    iteratorA += 1
  end

  # No match found
  return false
end


# Part 2


# Concatenes hello + name
def hello(name)

  # Return concat
  return 'Hello, ' << name
end


# Return true if s starts with a consonant
def starts_with_consonant? s

  # If first character is a consonant, return true
  # A match is considered to be:
  # A string which begins with a non-vowel and is followed by a letter, with the whole string case-insensitive
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else
    return false
  end
end


# Check if the input string in binary is a multiple of 4
def binary_multiple_of_4? s

  # A match is considered to be any of the following:
  # No non-digits, zero or more digits followed by exactly one "1" followed by at least two "0"s where the sequence occurs at the end of the line
  # Precisely the string "100"
  # Precisely the string "0" (because zero is a multiple of every complex number)
  if s.match(/[^\D]\d*[1]0{2,}$|^100$|^0$/)
    return true
  else
    return false
  end
end


# Part 3


# BookInStock represents a book with an ISBN and a price
class BookInStock

  # Access isbn
  attr_reader :isbn

  # Access price
  attr_reader :price

  # Mutate isbn
  attr_writer :isbn

  # Mutate price
  attr_writer :price

  # Construct a new BookInStock
  def initialize(isbn, price)

    # Check that the inputs are valid
    if isbn == "" or price <= 0.0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  # Return the price of the book, but as a string instead of float
  def price_as_string
    return "$%0.2f" % [@price]
  end
end
