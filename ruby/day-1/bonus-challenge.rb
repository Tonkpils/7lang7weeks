# Generate a random number from 1 - 10. Have user select a number and give them hints.

num = rand(10)

puts "Guess a number from 1 to 10."

while (guess = gets.to_i) != num
	puts "Your guess was #{guess}"
	if guess.to_i < num
		puts "Too low"
	elsif guess.to_i > num
		puts "Too high"
	end
end

puts "You found the number" if guess.to_i == num

puts "Game Over!"