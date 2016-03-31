#create a hash
#ask user for info
#put answers into hash
#print hash
#ask user if they need to change anything
#ask user for changes
#print new hash




questionaire = {}
puts "What is your name?"
name = gets.chomp
puts "What is your age?"
age = gets.chomp
puts "How many children do you have?"
children = gets.chomp
puts "What is your decor theme?"
decor = gets.chomp
questionaire = {
 #{name}.to_sym,
 #{age}.to_sym,
 #{children}.to_sym,
 #{decor}.to_sym,
	}
puts "{
Name:#{name}"
puts "Age:#{age}"
puts "Children:#{children}"
puts "Decor Theme:#{decor}
	}"
puts "What would you like to change?"
change = gets.chomp
puts "What is your #{change}:"
value = gets.chomp
puts "#{change}:#{value}"
questionaire.rehash