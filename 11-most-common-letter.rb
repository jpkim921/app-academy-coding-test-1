# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def get_letter_count(string)
  letter_count = []
  
  i = 0
  while i < string.length
    letter = string[i]
    #check if letter has already been counted. If it has, add 1 to the count.
    #If it hasn't, add an entry for it
    j = 0
    letter_counted = false
    while j < letter_count.length
      if letter_count[j][0] == letter
        letter_count[j][1] += 1
        letter_counted = true
        break
      end
      j += 1
    end
    if !letter_counted
      letter_count.push([letter, 1])
    end
      
    i += 1
  end
  return letter_count
end

def most_common_letter(string)
  letter_count = get_letter_count(string)  
  #Now we've counted the occurences of the letters. Let's find the max count
  k = 0
  max_count = 0
  max_index = 0
  while k < letter_count.length
    if letter_count[k][1] > max_count
      max_count = letter_count[k][1]
      max_index = k
    end
    k += 1
  end
  return letter_count[max_index]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
