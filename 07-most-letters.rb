# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

# make loops stop after finding z_after_a is true
def nearby_az(string)
    i=0
    z_after_a = false
    while i < string.length
        if string[i] == "a"
            j = 1
            while j < 4 && j + i < string.length
                if string[i+j] == "z"
                    z_after_a = true
                    break
                end
                j = j + 1
            end
        end
        i=i+1
    end
    return z_after_a
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
