
nums = [1, 2, 3, 4, 5, 6]


first_even = nums.find do |num|
  num.even?
end

p first_even
p nums