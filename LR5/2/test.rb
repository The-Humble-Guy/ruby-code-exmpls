# frozen_string_literal: true

require './main'
require 'minitest/autorun'
# Test class

class Test52 < Minitest::Test
  def make_word(l)
    word = String(l)
    l.times do |i|
      word[i] = rand(97..122).chr
    end
    word
  end

  def make_string(m)
    str = ''
    m.times do |i|
      str += make_word(rand(3..10))
      str += 'ing' if (i % 3).zero?
      str += ' '
    end
    str
  end

  def make_arr
    n = rand(1..5)
    arr = Array.new(n)
    n.times do |i|
      arr[i] = make_string(rand(5..20))
    end
    arr
  end

  def check_result(arr)
    flag = false
    arr.each do |str|
      flag = true if str.match(/(ing)/).nil? == true
    end
    flag
  end

  def test_1
    x = rand(10..50)
    x.times do
      prepare_arr = make_arr
      converted_arr = arr_replace(prepare_arr)
      assert_equal(check_result(converted_arr), true)
    end
  end
end
