# codewars link: https://www.codewars.com/kata/520b9d2ad5c005041100000f/train/ruby
# The method pig_it takes a string as an argument and returns a string 
# with the first letter of each word moved to the end of the word and 
# the letters "ay" added to the end of the word.

def pig_it text
  text.split.map do |w|
    if w =~ /\A[a-zA-Z]+\z/
      w[1..-1] + w[0] + 'ay'
    else
      w
    end
  end.join(' ')
end

# Code Explanation
# text.split Split the string into an array of words
# map do |w| Iterate through the array
# if w =~ /\A[a-zA-Z]+\z/ Check if the word is a letter
# w[1..-1] + w[0] + 'ay' Move the first letter to the end of the word and add 'ay'
# else w Return the word if it's not a letter
# end Join the words into a string and return the result