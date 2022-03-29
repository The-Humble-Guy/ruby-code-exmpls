# frozen_string_literal: true

def iter(xi)
  n = 1.0
  if xi.to_f.positive?
    enum = Enumerator.new do |y|
      loop do
        s = n / (n**2 + 2)
        y << s
        n += 1
      end
    end
    el = enum.find { |element| element < xi }
    [el, n]
  else
    [-1, -1]
  end
end
