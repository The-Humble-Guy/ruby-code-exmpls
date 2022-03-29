# frozen_string_literal: true

def calculate(input)
  if correct(input)
    x = input.to_f
    y = Math.log(x) + Math.sin(x / (x**3 - 5))**2
  else
    y = -1
  end
end

def correct(input)
  res = true
  digits = %w[0 1 2 3 4 5 6 7 8 9]
  0.upto(input.to_s.length - 1) do |i|
    res = false unless digits.include?(input[i].to_s)
  end
  res
end
