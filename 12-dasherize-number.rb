# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def is_odd(num)
  return num % 2 == 1
end

def dasherize_number(num)
  num = num.to_s
  result = ""
  i = 0
  
  while i < num.length
    current_digit = num[i]
    if i > 0
      last_digit = num[i-1]
      if is_odd(last_digit.to_i) || is_odd(current_digit.to_i)
        result += "-"
      end
    end
    result += current_digit
    i += 1
  end
  return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
