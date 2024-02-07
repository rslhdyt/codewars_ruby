# codewars link: https://www.codewars.com/kata/57eadb7ecd143f4c9c0000a3/train/ruby
# The method abbrev_name takes a string as an argument and returns the abbreviated name. 

def abbrev_name(name)
  name.upcase.split(' ').map { |n| n[0] }.join('.')
end

# Code Explanation
# name.upcase Convert the string to uppercase
# split(' ') Split the string into an array of words
# map { |n| n[0] } Iterate through the array and get the first letter of each word
# join('.') Join the first letters of the words with a period and return the result