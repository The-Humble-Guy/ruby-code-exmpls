# frozen_string_literal: true

load 'main.rb'
print "Input x: \n"
x = gets.chomp!
print "Computational result of log(#{x}) + (sin(#{x} / (#{x}** 3 - 5)))** 2 = "
puts calculate(x)
