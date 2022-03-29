# frozen_string_literal: true

def from_enumerator(start, stop, step)
  enum = Enumerator.new do |y|
    x = start.to_f
    loop do
      s = yield(x)
      y << s
      x += step if x <= stop
    end
  end
  enum.take((stop - start) / step).minmax
end

def minmax(a, b, &block)
  step = 1.0
  res1 = [Float::INFINITY, -Float::INFINITY]
  res2 = from_enumerator(a, b, step, &block)
  while [(res2[0] - res1[0]).abs, (res2[1] - res1[1]).abs].max >= 0.01
    step *= 0.5
    res1 = res2
    res2 = from_enumerator(a, b, step, &block)
  end
  res2
end
