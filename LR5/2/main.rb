# frozen_string_literal: true

def replace(str)
  words = str.split(' ')
  words.each do |word|
    next unless word.length > 3

    ends = word[-3..-1]
    next unless ends == 'ing'

    word[-3] = 'e'
    word[-2] = 'd'
    word.delete!(word[-1])
  end
  str = words.join(' ')
end

def arr_replace(arr)
  result = Array.new(arr.length)
  arr.each_with_index do |str, i|
    result[i] = replace(str)
  end
  result
end
