# frozen_string_literal: true

class IndexController < ApplicationController
  def pallindrome?(input)
    converted = input.to_s.split('')
    converted.eql? converted.reverse
    # input.to_s.split('').eql? input.to_s.split('').reverse
  end

  def calc(value)
    (0..value).to_a.map { |elem| [elem, elem**2] }.select do |val, sqr|
      pallindrome?(val) &&  pallindrome?(sqr)
    end #.map { |elem| [elem, elem**2] }
  end

  def correctly?(input)
    input.to_i.to_s == input && input.to_i >= 0 && input.length.positive?
  end

  def input; end

  def output
    @input_value = params[:input_value].to_i
    @error = 'Некорректный ввод' unless correctly?(params[:input_value])
    @result = calc(@input_value)
  end
end
