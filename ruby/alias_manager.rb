#use .reverse to switch the first and last name,
.#downcase the whole string,
#isolate the vowels using .select,
#use index to move vowels ahead in "aeiou" string,
#create interface,
#print array,
#decode array



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