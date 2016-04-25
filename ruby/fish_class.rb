#make a Fish class
#add 3 attributes, and 3 methods
#add attr_accessor and attr_reader 
#attr type (string), taste (string), scaleyness (integer)
#methods swim (string), hooked (string), length (integer)

class Fish
attr_accessor :type, :taste, :scaleyness
attr_reader :type, :taste, :scaleyness

def initialize(name, type, taste, scaleyness)
	@name = name
	@type_of_fish = type
	@tastes_like = taste
	@level_of_scaleyness = scaleys
end

def swim
	puts "I'm swimming"
end

def hooked
	puts "I'm hooked...Ouch! "
end
 
 names=Array.new
 types=Array.new
 tastes=Array.new
 scaleys=Array.new
 
 valid_input = false
 until valid_input 
 puts "Do you want to initialize some fish?(y/n)"
 fish = gets.chomp
 if fish == "y"
 	puts "What would you like to name your fish?"
 	name = gets.chomp
 	puts "Your fish's name is #{name}"
 	names << name															
 	puts "What type of fish is #{name}"
 	type = gets.chomp
 	@type = #{type} 
 	puts "#{name} is a #{type}"
 	types << type
 	puts "What does #{name} taste like?"
 	taste = gets.chomp
 	@taste = #{taste}
 	puts "#{name} tastes like #{taste}."
 	tastes << taste
 	puts "How scaley is #{name} on a scale, no pun intended, of 1 to 10?"
 	scaley = gets.chomp
 	puts "#{name} is a #{scaley} on the scaley scale."
    scaleys << scaley
 elsif fish == "n"
 	p names
 	p types
 	p tastes
 	p scaleys
 else
 	puts "I didn't understand you. Try again."
 end

 names.each do |name| puts "Your fish's name is #{name}" 
 end
 types.each do |type| puts "Your fish is a #{type}"
 end
 tastes.each do |taste| puts "Your fish tastes like #{taste}"
 end
 scaleys.each do |scaley| puts "Your fish is a #{scaley} on the scaley scale."
 end
 end
 end
 
