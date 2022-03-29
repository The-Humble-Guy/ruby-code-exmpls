# frozen_string_literal: true

load 'main.rb'
# str = ['singing did meaning', 'singing did meaning','singing did meaning']

puts 'Введите число строк'
n = gets.to_i
str = Array.new(n)
n.times do |i|
  puts "Введите #{i + 1}-ую строку"
  str[i] = gets.chomp!
end

puts 'Получившийся массив строк: ', str
str1 = arr_replace(str)
puts 'После замены: ', str1
