# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)
    vowels_num = 0
    vowels = ["a", "e", "i", "o", "u"]
    j = 0
    while j < string.length
        string_character = string[j]
        i = 0
        while i < vowels.length
            if string_character == vowels[i]
                vowels_num = vowels_num + 1
                break
            end
            i = i + 1
        end
        j = j + 1
    end
    return vowels_num
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
