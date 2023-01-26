# When done, submit this entire file to the autograder.

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
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
