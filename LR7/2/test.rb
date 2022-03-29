# frozen_string_literal: true

require_relative 'main'
require 'minitest/autorun'

class TestLab72 < Minitest::Unit::TestCase
  def test_1
    a = Rectangle.new(1, 2)
    b = Parallelogram.new(3, 4, 5)
    assert(b.class < a.class)
  end

  def test_2
    a = Rectangle.new(1, 1)
    assert_equal(a.square?, true)
  end

  def test_3
    a = Parallelogram.new(1, 1, 1)
    assert_equal(a.isCube?, true)
  end

  def test_4
    l = rand(1..10)
    w = rand(1..10)
    a = Rectangle.new(l, w)
    l1 = a.lenght
    w1 = a.width
    assert((l == l1) && (w == w1))
  end

  def test_5
    l = rand(1..10)
    w = rand(1..10)
    h = rand(1..10)
    a = Parallelogram.new(l, w, h)
    l1 = a.lenght
    w1 = a.width
    h1 = a.height
    assert((l == l1) && (w == w1) && (h == h1))
  end
end
