class Books
attr_accessor :age, :price, :genre 
attr_reader :plot

def initialize(age, price, genre, plot)
	@age = age
	@price = price
	@genre = genre
	@plot = plot
end

def how_old(age)
	puts "This book is #{@age} years old."
end

def how_much(price)
	puts "This book is $ #{price}."
end

def what_genre(genre)
	puts "This book is a #{@genre}"
end

def whats_it_about(plot)
	puts "This book is about #{@plot}"
end

end

books = Array.new
age1 = Array.new
price1 = Array.new
genre1 = Array.new
plot1 = Array.new

valid_input = false
until valid_input 
	puts "Do you want to talk about books?"
answer = gets.chomp
if answer == "yes"
		puts "How old is your book?"
	age = gets.chomp
		puts "Your book is #{age} years old."
	books << age
	age1 << age
		
		puts "How much is your book?"
	price = gets.chomp
		puts "Your book is $ #{price}."
	books << price
	price1 << price
		
		puts "What kind of book is it?"
	genre = gets.chomp
		puts "Your book is a #{genre}."
	books << genre
	genre1 << genre
		
		puts "What is the plot of your book."
	plot = gets.chomp
		puts "Your book is about #{plot}."
	books << plot
	plot1 << plot

	elsif answer == "no"
valid_input = true
p books


else
	puts "What?"
end
age1.each do |age| puts "Your book is #{age} years old." 
end
price1.each do |price| puts "Your book is $#{price}."
end
genre1.each do |genre| puts "Your book is a #{genre}."
end
plot1.each do |plot| puts "Your book is about #{plot}."
end

end








