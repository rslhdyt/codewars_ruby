# codewars link: https://www.codewars.com/kata/54da539698b8a2ad76000228/train/ruby
# The method take_a_ten_minutes_walk takes an array of strings as an argument and returns true if the array represents a ten-minute walk, and false otherwise.

def is_valid_walk(walk)
  return false if walk.count != 10
  
  x, y = 0, 0
  
  walk.each do |dir|
    case dir
      when 'n'
        y += 1
      when 's'
        y -= 1
      when 'w'
        x -= 1
      when 'e'
        x += 1
    end
  end
  
  x == 0 && y == 0
end

# Code Explanation
# return false if walk.count != 10 Return false if the length of the array is not 10
# x, y = 0, 0 Initialize x and y to 0
# walk.each Iterate through the array
# case dir Check the value of dir
# when 'n' Increment y by 1 if dir is 'n'
# when 's' Decrement y by 1 if dir is 's'
# when 'w' Decrement x by 1 if dir is 'w'
# when 'e' Increment x by 1 if dir is 'e'
# x == 0 && y == 0 Return true if x and y are both 0, and false otherwise