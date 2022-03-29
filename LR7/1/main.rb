# frozen_string_literal: true

def create_word
  mas = ('a'..'z').to_a + ('A'..'Z').to_a
  mas.shuffle[1..rand(1..15)].join
end

def create_str
  rand(1..15).times.map { create_word }.join(' ')
end

def change(str)
  str.split(' ').each { |word| word.gsub!(/[eErtU]/, '') }.join(' ') + "\n"
end

def generate_file(filename)
  File.open(filename, 'w') do |f|
    rand(10..15).times do
      f.syswrite("#{create_str}\n")
    end
  end
end

def reverse_write_file(file_in, file_out)
  File.open(file_in, 'r') do |f|
    arr = []
    f.readlines.each { |str| arr.append(change(str)) }

    File.open(file_out, 'w') do |g|
      arr.reverse.each { |str| g.syswrite(str) }
    end
  end
rescue StandardError
  puts 'No such file!'
  exit 100
end
