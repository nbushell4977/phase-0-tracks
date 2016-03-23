# Hamster Program
puts "What is the hamsters name?"
name=gets.chomp
puts "What volume level are you comfortable with on a scale of 1 to 10?"
volume=gets.chomp
puts "what fur color would you like?"
fur_color=gets.chomp
puts "Is the hamster a good candidate for adoption?"
candidate=gets.chomp
puts "What do you think the hamster's age is?"
age=gets.chomp
puts "The hamsters name is #{name}"
puts "The hamsters colume is #{volume}"
puts "the hamsters fur color is #{fur_color}"
puts "Candidate for adoption? #{candidate}"
if age==" "
    puts "nil"
else
    puts "The age of the hamster is #{age}"
end