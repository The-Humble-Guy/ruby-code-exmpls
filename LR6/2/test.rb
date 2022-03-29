# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'

class TestLab < Minitest::Unit::TestCase
  # usual case
  def test_1
    xi = (rand(1..8) * 10**-rand(1..4))
    res = iter(xi)
    n = 1.0
    y = n / (n**2 + 2)
    while y > xi
      n += 1
      y = n / (n**2 + 2)
    end
    assert_equal(n, res[1])
    assert_in_delta(y, res[0], 0.01)
  end

  # uncorrect input
  def test_2
    i = rand(1..15)
    n = ('a'..'z').to_a.shuffle[1..i].join
    res = iter(n)
    assert_equal(res[0], -1)
    n = -1
    res = iter(n)
    assert_equal(res[0], -1)
  end
end
