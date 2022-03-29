# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'

class TestLab < Minitest::Unit::TestCase
  # usual case
  def test_1
    xi = (rand(1..8) * 10**-rand(1..4))
    res1 = iter(0.5 * xi)
    res2 = iter(xi)
    assert res1[0] < res2[0]
  end

  # uncorrect input
  def test_2
    i = rand(1..15)
    n = ('a'..'z').to_a.shuffle[0..i].join
    res = iter(n)
    assert_equal(res[0], -1)
    n = -1
    res = iter(n)
    assert_equal(res[0], -1)
  end
end
