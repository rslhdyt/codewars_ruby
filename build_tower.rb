# codewars link: https://www.codewars.com/kata/576757b1df89ecf5bd00073b/train/ruby
# The method towerBuilder takes an integer n as an argument and returns an array of strings.

def towerBuilder(n_floors)
  tower = []
  width = n_floors * 2 - 1
  
  n_floors.times do |f|
    tower << ('*' * (f * 2 + 1)).center(width)
  end
  
  tower
end

# Code Explanation
# tower = [] Create an empty array to store the strings
# width = n_floors * 2 - 1 Calculate the width of the tower
# n_floors.times do Iterate through the range n_floors
# tower << ('*' * (f * 2 + 1)).center(width) Add the string of asterisks to the array and center it
# tower Return the array of strings