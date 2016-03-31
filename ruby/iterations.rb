def what_day
	puts "what day is it?"
	yield("thursday")
	puts "thank you"
end
what_day { |day| puts "today is #{day}" }
	
#release1

array1 = [1, 2, 3, 4, 5,]
hash1 = { name: "nick", age: "thirty_seven", eyes: "blue", }

array1.each do |i|
	puts i * 3
end
array1.map do |i|
	puts i + 5
end
array1.map! do |i|
	puts i - 4
end
hash1.each do |i| 
	puts "i--------"
end

#release2

array1 = [1, 2, 3, 4, 5,]
hash1 = { name: "nick", age: "thirty_seven", eyes: "blue", }

array1.delete_if { |x| x >= 3}
array1.select { |item| item >= 2 }
array1.take_while { |i| i < 3 }

hash1.delete_if { |x| x >= 3}
hash1.select { |item| item >= 2 }
hash1.take_while { |i| i < 3 }

