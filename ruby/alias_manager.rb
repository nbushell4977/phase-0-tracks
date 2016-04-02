array = Array.new
valid_input = false
until valid_input
puts "What is your name? Enter 'quit' to finish."
name = gets.chomp

if name == "quit"
	puts "Thank you."
	valid_input = true
else
	puts "Your codename is #{name.reverse}. Please enter your codename and hit enter."
	array << gets.chomp
end
end
p array
p array.reverse 