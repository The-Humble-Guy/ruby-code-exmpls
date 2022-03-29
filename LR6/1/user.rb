# frozen_string_literal: true

require_relative 'main'

xi1 = 0.01
res1 = iter(xi1)
puts "Первый член, меньший #{xi1}", res1[0]
puts 'Количество итераций', res1[1]

xi2 = 0.0001
res2 = iter(xi2)
puts "Первый член, меньший #{xi2}", res2[0]
puts 'Количество итераций', res2[1]

puts "Увеличив точность в #{xi1 / xi2} раз, количество итераций увеличилось в #{res2[1] / res1[1]} раз"
