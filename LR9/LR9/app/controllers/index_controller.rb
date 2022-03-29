# frozen_string_literal: true

class IndexController < ApplicationController
  before_action :prepare_class_variables, only: :result

  def enter_form; end

  def result
    render partial: 'result', locals: { numbers: calc(@number) }, layout: false
  end

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
    @numbers = arr
  end

  private

  def prepare_class_variables
    @number = params[:number].to_i
    @numbers = []
  end
end
