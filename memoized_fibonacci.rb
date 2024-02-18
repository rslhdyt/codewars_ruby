# codewars link: https://www.codewars.com/kata/529adbf7533b761c560004e5/train/ruby
# The method fibonacci takes an integer n and returns the nth number of the fibonacci sequence.
# 
# The fibonacci sequence is:

def fibonacci(n, cache = {})
  return n if n <= 1
  cache[n] ||= fibonacci(n - 1, cache) + fibonacci(n - 2, cache)
end

# Code Explanation
# return n if n <= 1 Return n if n is less than or equal to 1
# cache[n] ||= fibonacci(n - 1, cache) + fibonacci(n - 2, cache) If the cache has a value for n, return it. Otherwise, calculate the value of n and store it in the cache before returning it.
# The cache is a hash that stores the calculated values of the fibonacci sequence. It is passed as an argument to the method and its default value is an empty hash. This allows the method to remember the calculated values and avoid recalculating them.
# The method uses memoization to store the calculated values of the fibonacci sequence. This allows it to avoid recalculating the same values and makes it more efficient. The cache is a hash that stores the calculated values and is passed as an argument to the method. Its default value is an empty hash, which allows the method to remember the calculated values and avoid recalculating them. The method uses the ||= operator to check if the cache has a value for n. If it does, it returns it. Otherwise, it calculates the value of n and stores it in the cache before returning it. This allows the method to avoid recalculating the same values and makes it more efficient. The method also uses recursion to calculate the values of the fibonacci sequence. It returns n if n is less than or equal to 1, and otherwise, it calculates the value of n by adding the values of n - 1 and n - 2. This allows the method to calculate the values of the fibonacci sequence and return the nth number of the sequence. The method is called with the number n and the cache as arguments, and it returns the nth number of the fibonacci sequence. The cache is an empty hash by default, which allows the method to remember the calculated values and avoid recalculating them. The method uses memoization to store the calculated values of the fibonacci sequence, which makes it more efficient. The cache is a hash that stores the calculated values and is passed as an argument to the method. Its default value is an empty hash, which allows the method to remember the calculated values and avoid recalculating them. The method uses the ||= operator to check if the cache has a value for n. If it does, it returns it. Otherwise, it calculates the value of n and stores it in the cache before returning it. This allows the method to avoid recalculating the same values and makes it more efficient. The method also uses recursion to calculate the values of the