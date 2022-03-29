# frozen_string_literal: true

require_relative 'main'
require 'minitest/autorun'

class TestLab63 < Minitest::Unit::TestCase
  def test_1
    min = -0.5
    max = 0.25
    arr = minmax(0, 2) { |x| (x - 1) / (x + 2) }
    assert [(min - arr[0]).abs, (max - arr[1]).abs].max <= 0.01
  end

  def test_2
    min = -0.997
    max = -0.479
    arr = minmax(-1, 1) { |x| Math.sin(0.5 * x - 1) }
    assert [(min - arr[0]).abs, (max - arr[1]).abs].max <= 0.01
  end
end
