#require gems
require 'sqlite3'
require 'faker'

#make call to create sql database
db = SQLite3::Database.new("drink_club.db")

#create sql tables for drink_club
create_cocktails = <<-SQL
CREATE TABLE IF NOT EXISTS cocktails(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	strong BOOLEAN,
	liquor_id INT,
	FOREIGN KEY (liquor_id) REFERENCES liquors(id)
)
SQL


create_beers = <<-SQL
CREATE TABLE IF NOT EXISTS beers(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	strong BOOLEAN,
	liquor_id INT,
	FOREIGN KEY (liquor_id) REFERENCES liquors(id)
)
SQL

create_liquors_table = <<-SQL
	CREATE TABLE IF NOT EXISTS liquors(
	id INTEGER PRIMARY KEY,
	liquor_name VARCHAR(255)
)
SQL

db.execute(create_cocktails)
db.execute(create_beers)
db.execute(create_liquors_table)

#methods to insert liquors and drinks
def create_liquor(db, liquor_name)
	db.execute("INSERT INTO liquors (liquor_name) VALUES (?)", [liquor_name])
	puts "added new liquor"
end
#delete a liquor by name
def delete_liquor (db, liquor_name)
	db.execute("DELETE FROM liquors WHERE liquor_name=?", [liquor_name])
end

#add beer for specific liquor
def add_beer(db, name, strong, liquor_id)
	stong = "not_strong"
	db.execute("INSERT INTO beers (name, strong, liquor_id) VALUES (?,?,?)", [name, strong, liquor_id])
	puts "added beer"
end

#add cocktail for specific liquor
def add_cocktail(db, name, strong, liquor_id)
	strong = "not_strong"
	db.execute("INSERT INTO cocktails (name, strong, liquor_id) VALUES (?,?,?)", [name, strong, liquor_id])
	puts "added cocktail."
end

#display liquor's drinks
def show_drinks(db, liquor_name)
	print "\n"
	p "cocktails"
	p db.execute("SELECT * FROM cocktails WHERE liquor_id=?", [liquor])
	print "\n"
	p "beers"
	p db.execute("SELECT * FROM beers WHERE liquor_id=?", [liquor])
	print "\n"
end

#create method to mark item as strong
def mark_strong(db, strong, name)
	strong = "strong"
	db.execute("UPDATE cocktails SET strong=? WHERE name=?", [strong, name])
	db.execute("UPDATE beers SET strong=? WHERE name=?", [strong, name])
	puts "set #{name} to strong"
end

#auto populate liquors table if empty
liquors = db.execute("SELECT * FROM liquors")

if liquors.empty?
	create_liquor(db, "whiskey")
	add_cocktail(db, "old fashion", "false", 1)
	add_cocktail(db, "manhatten", "false", 1)
	add_cocktail(db, "whiskey_sour", "false", 1)

	create_liquor(db, "vodka")
	add_cocktail(db, "sea_breeze", "false", 2)
	add_cocktail(db, "martini", "false", 2)
	add_cocktail(db, "lemon_drop", "false", 2)

	create_liquor(db, "gin")
	add_cocktail(db, "gin_martini", "false", 3)
	add_cocktail(db, "gin_tonic", "false", 3)
	add_cocktail(db, "gin_juice", "false", 3)
end

#begin user interface	
loop do
	puts "are you new to drink_club? y/n "
	y_or_n = gets.chomp.to_s
	if y_or_n == "y"
		puts "enter a new liquor to begin"
		new_liquor = gets.chomp.to_s
		create_liquor(db, liquor_name)
		users = db.execute("SELECT * FROM liquors")	
		puts "here is #{liquor_name}'s drink list."

		liquors.each do |liquor|
			if liquor[1] == liquor_name
				delete_liquor(db, liquor[0])

				show_drinks(db, liquor[0])
			end
		end
		
		puts "Here are all existing liquors. #{liquor_name} is the booze in Drink Club"
		p liquors
		print "\n"
		puts "what drink would you like to create for #{liquor_name}?"
	
	#begin second loop for entering drinks	
	loop do
		puts "enter a drink. Type 'done' when finished"
		drink_input = gets.chomp.to_s
		break if drink_input == "done"
	
		puts "is this a cocktail or a beer? (c/b)"
		c_or_b = gets.chomp.to_s			

		if c_or_b == "c"
			liquors.each do |liquor|
				if liquor[1] == liquor_name
					add_cocktails(db, drink_input, "false", liquor[0])
					show_drinks(db, liquor[0])
				end
			end		
			
		elsif c_or_b == "b"
			liquors.each do |liquor|
				if liquor[1] == liquor_name
					add_beer(db, drink_input, "false", liquor[0])
					show_drinks(db, liquor[0])
				end
			end		
		else
			puts "please enter 'c' or 'b' when prompted, now list your drinks here"
		end
	end

	elsif y_or_n == "n"
		break
	else
		puts "please enter 'y' or 'n'"
	end		
end

#begin browsing feature
loop do
	liquors = db.execute("SELECT * FROM liquors")
	puts "here is a list of all of our booze"
	p liquors
	print "\n"
	puts "Browse each liquor's drinks by entering a liquor_name - type 'done' to continue"
	liquor_name = gets.chomp.to_s
	break if liquor_name == "done"
	puts "here are #{liquor_name}'s drinks"

	liquors.each do |liquor|
		if liquor[1] == liquor_name
			show_drinks(db, liquor[0])
		end
	end
end

#make a drink strong
	

	puts "What would you like to make stronger?"
	drink = gets.chomp.to_s

	liquors.each do |liquor|
		if liquor[1] == liquor_name
			mark_strong(db, "true", )
			puts "you just marked #{drink_name} as strong."
			show_drinks(db, liquor[0])
		end
	end


