#module Shout
  # we'll put some methods here soon, but this code is fine for now!
#end

#require_relative 'shout'
#Shout.singleton_methods

#module Shout
 #   def self.yell_angrily(words)
 #   	words + "!!!" + " :("
 #   end
 #	def self.yell_happily(words)
 #		words + "!!!" + ":)"
 #	end
#end 

module Shout
end
require_relative 'shout'
Shout.singleton_methods

def yell_angrily(words)
 words + "!!!" + " :("
end
def yell_happily(words)
 words + "!!!" + ":)"
 end
  
 
 class Pirate
 	include Shout
 end
 
 class Viking
 	include Shout
 end
 
 pirate = Pirate.new
 pirate.yell_angrily(Argg)
 
 viking = Viking.new
 viking.yell_happily(Plunder)





	