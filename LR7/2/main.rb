# frozen_string_literal: true

class Rectangle
  def initialize(lenght, width)
    @lenght = lenght
    @width = width
  end

  def show
    puts "class: #{self.class.name}"
    puts "\tполя"
    puts "длина: #{@lenght}"
    puts "ширина: #{@width}"
  end

  def square?
    @width == @lenght
  end

  attr_reader :lenght, :width
end

class Parallelogram < Rectangle
  def initialize(lenght, width, height)
    super(lenght, width)
    @height = height
  end

  def show
    super
    puts "высота: #{@height}"
  end

  def isCube?
    (@height == @lenght) && (@lenght == @width)
  end

  attr_reader :height
end
