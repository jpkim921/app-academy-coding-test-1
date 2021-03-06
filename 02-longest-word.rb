# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  sentence = sentence.split
  i = 0
  max_word = ""
  max_word_length = 0
  while i < sentence.length
    current_word = sentence[i]
    current_word_length = current_word.length
    if current_word_length > max_word_length
      max_word = current_word
      max_word_length = current_word_length
    end
    i = i + 1
  end
  return max_word
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
