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
