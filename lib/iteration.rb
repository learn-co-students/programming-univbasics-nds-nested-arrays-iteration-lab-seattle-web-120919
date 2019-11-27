def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  #
  # array_1 = [["sausage", "mushroom"], ["pineapple", "ham"]]
  pizza_string = []
  outer_index = 0
    while outer_index < src.count do
      element1 = src[outer_index][0]
      element2 = src[outer_index][1]
      pizza_string << "I love #{element1} and #{element2} on my pizza"
      outer_index += 1
    end
    pizza_string
  end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
greater_pair = []
outer_index = 0
  while outer_index < src.count do
    element1 = src[outer_index][0]
    element2 = src[outer_index][1]
    if element1 > element2
      greater_pair << element1
    else
      greater_pair << element2
    end
  outer_index += 1
  end
greater_pair
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  outer_index = 0
    while outer_index < src.count do
      element1 = src[outer_index][0]
      element2 = src[outer_index][1]
      if (element1 % 2 == 0) && (element2 % 2 == 0)
        even_pair_sum = element1 + element2
        total += even_pair_sum
      end
      outer_index += 1
    end
  total
end 
