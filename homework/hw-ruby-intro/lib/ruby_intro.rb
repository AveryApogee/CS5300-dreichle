# When done, submit this entire file to the autograder.

# Part 1


# Add all integers in the array and return the sum
def sum arr
  sum = 0
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
