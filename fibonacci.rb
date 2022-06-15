# frozen_string_literal: true

# iterative fibonacci
def fibs(num, arr = [])
  [0, 1, 0] => [a, b, c] # rightward assignment
  num.times do
    arr << c
    c = b
    a, b = b, a + b
  end
  arr
end

# recursive fibonacci
def fibs_rec(num)
  return [] if num.zero?
  return [0] if num == 1
  return [0, 1] if num == 2

  seq = fibs_rec(num - 1)
  seq << seq[-2] + seq[-1]
end
