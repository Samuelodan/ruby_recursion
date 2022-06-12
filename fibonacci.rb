# frozen_string_literal: true

# iterative fibonacci
def fibs(num)
  [0, 1, 0] => [a, b, c] # rightward assignment
  num.times do
    c = b
    a, b = b, a + b
  end
  puts c
end

# recursive fibonacci
def fibs_rec(num)
  return 0 if num.zero?
  return 1 if num == 1

  fibs_rec(num - 1) + fibs_rec(num - 2)
end
