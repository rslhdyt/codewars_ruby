# codewars link: https://www.codewars.com/kata/5263c6999e0f40dee200059d/train/ruby
# The method get_pins takes a string of observed digits and returns a list of all the possible PINs that could be generated from the observed digits. 

def get_pins(observed)
  adjacent_keys = {
    '1' => [1, 2, 4],
    '2' => [1, 2, 3, 5],
    '3' => [2, 3, 6],
    '4' => [1, 4, 5, 7],
    '5' => [2, 4, 5, 6, 8],
    '6' => [3, 5, 6, 9],
    '7' => [4, 7, 8],
    '8' => [5, 7, 8, 9, 0],
    '9' => [6, 8, 9],
    '0' => [0, 8]
  }
  
  guess = observed.chars.map { |digit| adjacent_keys[digit] }
  
  guess.first.product(*guess[1..-1]).map(&:join)
end

# Code Explanation
# The method uses a hash to store the adjacent keys for each digit. 
# The keys of the hash are the digits and the values are arrays of the adjacent keys. 
# The map method iterates over each digit of the observed string and converts it into an array of adjacent keys. 
# The method then uses the product method to calculate the Cartesian product of the arrays of adjacent keys. 
# The product method takes the first array and calculates the Cartesian product with the rest of the arrays. 