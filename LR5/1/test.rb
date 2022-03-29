# frozen_string_literal: true

require './main'
require 'minitest/autorun'
# Test class
class Test1 < Minitest::Unit::TestCase
  def test_1
    x = 10
    res = 2.30268
    assert_in_delta(res, calculate(x), 10**-2)
  end

  def test_2
    x = 2
    res = 1.0755
    assert_in_delta(res, calculate(x), 10**-2)
  end

  def test_3
    x = 3
    res = 1.117
    assert_in_delta(res, calculate(x), 10**-2)
  end

  def test_4
    x = 4
    res = 1.391
    assert_in_delta(res, calculate(x), 10**-2)
  end

  def test_5
    x = 5
    res = 1.611
    assert_in_delta(res, calculate(x), 10**-2)
  end

  def test6
    x = 'sfd'
    res = -1
    assert_in_delta(res, calculate(x), 10**-2)
  end

  def test7
    x = '1a34ads'
    res = -1
    assert_in_delta(res, calculate(x), 10**-2)
  end
end
