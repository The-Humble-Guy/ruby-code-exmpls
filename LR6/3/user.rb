# frozen_string_literal: true

require_relative 'main'

# передача в качестве блока
puts minmax(0, 2) { |x| (x - 1) / (x + 2) }

lm = ->(x) { Math.sin(0.5 * x - 1) }

# передача лямбда-функции
puts minmax(-1, 1, &lm)
