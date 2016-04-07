class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
    def speak(x)
        x.times{puts "woof"}
        end
        
         def roll_over
         puts "roll over"
         end

	def dog_years(x)
		puts x * 7
	end
	
	def attack
		puts "GRRRRR!!!"
	end
	
	def initialize
		p  "Initializing new puppy instance ..."
	end
end

fido = Puppy.new
fido.fetch("ball")
fido.speak(10)
fido.roll_over
fido.dog_years(7)
fido.attack


class Exercise
	
	def initialize
		p  "Initializing new exercise ..."
	end
	
	def push_ups
		puts "doing push ups"
	end
	
	def yoga
		puts "stretching"
	end
end


instances = 0
until instances == 50
p workout = Exercise.new.split(" ")
instances += 1
end
	
	