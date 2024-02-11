# codewars link: https://www.codewars.com/kata/55fd2d567d94ac3bc9000064/train/ruby

def row_sum_odd_numbers(n)
  arr = []
  odd = 1
  
  for i in (1..n)
    odd_arr = []
    i.times do
      odd_arr << odd
      odd += 2
    end
    
    arr << odd_arr
  end
  
  arr[n-1].sum
end

# Code Explanation
# arr = [] Create an empty array to generate pyramid of odd numbers
# odd = 1 Initialize odd to 1
# for i in (1..n) Iterate through the range from 1 to n
# odd_arr = [] Create an empty array to store the odd numbers for the current row
# i.times do Iterate i times
# odd_arr << odd Add the current odd number to the array
# odd += 2 Increment odd by 2 to generate odd numbers
# arr << odd_arr Add the array of odd numbers to the main array
# arr[n-1].sum Return the sum of the last array in the main array

