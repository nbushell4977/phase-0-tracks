class Santa
	attr_reader :gender, :ethnicity
	attr_accessor :age, :reindeer_ranking
	
	def initialize(gender, ethnicity)
		puts "initializing Santa instance."
		@gender = gender
		@ethnicity = ethnicity
		end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end	
	def eat(cookie)
		puts "that was a good #{cookie}"
	end
santa1 = Santa.new("male", "black")
	santa1.speak
	santa1.eat("snickerdoodle")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
end

def gender
		@gender
	end
	def ethnicity
		@ethnicity
	end
	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	def get_mad_at=(name)
		@reindeer_ranking = reindeer_ranking.delete(name).push (name)
	end
	@age = 0
	def celebrate_birthday
		@age + 1 
	end

	gender_array = ["male", "female", "unisex", "unsure"]
	ethnicity_array = ["white", "black", "hispanic", "asian", "mixed", "unsure"]
	
	1000.times {
		 p gender_array.sample
		 p ethnicity_array.sample
		 p 1 + rand(140) 
	}

	