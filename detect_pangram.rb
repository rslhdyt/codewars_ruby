# codewars link: https://www.codewars.com/kata/545cedaa9943f7fe7b000048/train/ruby
# The method pangram? takes a string as an argument and returns true if the string is a pangram, false otherwise. A pangram is a sentence that contains every letter of the alphabet at least once. The method uses the all? method to iterate through the range 'a'..'z' and check if each letter is included in the string. The method includes? is case-sensitive, so we call downcase on the string to make the check case-insensitive. If all the letters are included in the string, the method returns true; otherwise, it returns false.

def pangram?(string)
  ('a'..'z').all? { |c| string.downcase.include? c }
end

# the (a..z) is a range of letters will generate array of alhphabet letters from a to z
# the all? method will iterate through the range and check if each letter is included in the string