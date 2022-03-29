# frozen_string_literal: true

def iter(xi)
  n = 1.0
  y = n / (n**2 + 2)
  res = [y, n]
  if xi.to_f.positive?
    while y > xi
      n += 1
      y = n / (n**2 + 2)
    end
    res = [y, n]
  else
    res = [-1, -1]
  end
  res
end
