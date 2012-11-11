# Print the contents of an array of sixteen numbers 4 numbers at a time using just each.
# Do the same with each_slice

arr = (1..16).to_a

puts "Part 1 Begin --"

i = 0
arr.each do |item|
  p arr[i, 4] if i%4 == 0
  i += 1
end
puts "End..."

puts "Part 2 Begin --"

arr.each_slice(4) { |range| p range }

puts "End..."
