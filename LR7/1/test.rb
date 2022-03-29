# frozen_string_literal: true

require 'English'
require_relative 'main'
require 'minitest/autorun'

class TestLab71 < Minitest::Unit::TestCase
  # стандартный случай
  def test_1
    # создали и перезаписали файл
    generate_file('TestF.txt')
    reverse_write_file('TestF.txt', 'TestG.txt')

    arr1 = arr2 = []

    File.open('TestF.txt', 'r') do |f|
      arr1 = f.readlines
      File.open('TestG.txt', 'r') do |g|
        arr2 = g.readlines
      end
    end

    assert(arr1.each { |str| str.gsub!(/[eErtU]/, '') } == arr2.reverse)
  end

  def test_2
    fork { reverse_write_file('TestF_1.txt', 'TestG_1.txt') }
    Process.wait
    assert_equal $CHILD_STATUS.exitstatus, 100
  end
end
