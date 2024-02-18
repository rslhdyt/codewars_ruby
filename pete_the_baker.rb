# codewars link: https://www.codewars.com/kata/525c65e51bf619685c000059/train/ruby
# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?

def cakes(recipe, available)
  recipe.map do |ingredient, amount|
    (available[ingredient] || 0) / amount
  end.min
end

# Code Explanation
# recipe.map Iterate through the recipe hash and return an array of the available amount of each ingredient
# available[ingredient] || 0 If the ingredient is not available, return 0
# / amount Divide the available amount by the required amount
# min Return the smallest number in the array
