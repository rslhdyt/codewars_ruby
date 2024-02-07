# codewars link: https://www.codewars.com/kata/556deca17c58da83c00002db/train/ruby
# The method tribonacci takes an array of 3 integers and an integer n as arguments and returns an array of the first n elements of the sequence. 
# The method appends the sum of the last 3 elements of the array to the array n times. 
# The method returns the first n elements of the array using the slice method.

def tribonacci(signature,n)
  arr = signature
  
  n.times.each do |i|
    sum = arr[i, 3].sum
    
    arr << sum
  end
  
  arr[0, n]
end

# Code Explanation

# n.times.each do |i| Iterate through the range n times
# sum = arr[i, 3].sum Get the slice of the last 3 elements of the array starting from index i and sum them
# arr << sum Append the sum to the array
# arr[0, n] Return the first n elements of the array using the slice method