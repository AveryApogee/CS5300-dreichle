# Avery Reichler
# 31 January 2023
# CS 5300 
# Homework 1, Section 2, Part 1


module FunWithStrings


  # Is this string the same forward as it is backwards?
  def palindrome?
    
    # Bring the string to lowercase
    dc = self.downcase

    # Remove instances of non-alphanumerics
    clean = dc.gsub(/[^0-9a-z]/, '')

    # Compare the string to its reversed copy
    if clean.reverse == clean
      return true
    else
      return false
    end
  end


  # Return a hash whose keys are words in the string and whose values are the number of times each word appears
  def count_words
    
    # Bring the string to lowercase
    dc = self.downcase

    # Remove instances of non-alphanumerics, except spaces
    clean = dc.gsub(/[^0-9a-z ]/, '')

    # Split the clean words on the default delimiter
    cleanList = clean.split

    # Initialize the hash map
    words = Hash.new(0)

    # Generate the hash by iterating over each word in the list of clean words
    cleanList.each { |key| words[key] += 1 }

    # Return the hash
    return words
  end


  # Convert a string of words into an array of anagram groups
  def anagram_groups

    # Bring the string to lowercase
    clean = self.downcase

    # Split the clean words on the default delimiter
    cleanList = clean.split

    # Group the clean words by the sorted list of their characters, and return the values in the key-value pair this generates
    return cleanList.group_by { |element| element.chars.sort }.values
  end
end


# make all the above functions available as instance methods on Strings:
class String
  include FunWithStrings
end
