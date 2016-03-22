

puts "What is your name?"
name = gets.chomp
puts "Your name is #{name}."

puts "How old are you?"
age = gets.chomp
puts "You are #{age} years old."

puts "What year were you born"
year = gets.chomp
puts "You were born in #{year}"

puts "Should we order you some garlic bread? (y/n)"
garlic_bread = gets.chomp

puts "Do you want to enroll in our health insurance? (y/n)"
health_insurance = gets.chomp 

if age = "2016-year" 
	puts "Probably not a vampire."
else
	puts "Probably a vampire."
end
if age != "2016-year" && garlic_bread = "n" || health_insurance = "n"
	puts "probably a vampire."
elsif age != "2016-year" && garlic_bread = "n" && health_insurance = "n"
	puts "Almost certainly a vampire."
elsif name = "Drake Cola" || "Tu Fang"
	puts "Definitely a vampire"
else 
	puts "Results inconclusive"
end


valid_input = false
until valid_input 
puts "What are you alergic too? Type done when finished"
alergy = gets.chomp
if alergy == "sunshine"
	puts "Probably a vampire."
	valid_input = true
elsif alergy == "done"
	puts "Thank you."
	valid_input = true
else 
	puts "And..."
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end


 
 
	


