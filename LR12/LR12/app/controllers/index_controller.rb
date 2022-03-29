# frozen_string_literal: true

class IndexController < ApplicationController
  def pallindrome?(input)
    input.length.times do |i|
      return false if input[i] != input[-i - 1]
    end
    true
  end

  def calc(value)
    arr = []
    max = value.to_i + 1
    max.times do |i|
      arr.append([i, i * i]) if pallindrome?(i.to_s) && pallindrome?((i * i).to_s)
    end
    arr
  end

  def correctly?(input)
    return false if input.to_i.to_s != input || input.to_i.negative? || input.length.zero?

    true
  end

  def input; end

  def output
    @input_value = params[:input_value]
    @error = 'Некорректный ввод' unless correctly?(@input_value)
    @result = calc(@input_value)
  end
end
