# Simple grep that will print lines of a file having any
# occurrences of a phrase anywhere in that line

# Usage ruby challenge-3.rb file_name "expression"
def grep(file, expression)
  File.open(file) { |f| f.each_with_index { |line, index| puts "#{index + 1} : #{line}" if line =~ /#{expression}/ }}
end


raise "Invalid number of arguments (#{ARGV.length} of 2)" if ARGV.length != 2

puts "File name: #{ARGV[0]}"
puts "Expression: #{ARGV[1]}"

grep ARGV[0], ARGV[1]