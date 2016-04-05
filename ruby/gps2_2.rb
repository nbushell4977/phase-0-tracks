# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create list method with parameters as a string
  # split the input string into an array
  # turn the array into a hash
  # set default for each item quantity to zero
  # print the list to the console [can you use one of your other methods here?] Call the print method
# output: [what data type goes here, array or hash?]


# Method to add an item to a list
# input: name of list and item name to add and optional quantity
# steps: name of hash [key] = value
# output: updated hash



# Method to remove an item from the list
# input:  name of list and item to delete from list
# steps:  name of hash/list and delete the key name (which is item to delete)
# output: updated hash


# Method to update the quantity of an item
# input:  name of list and item/key to update and new value
# steps: name of hash/list and [key] = value
# output: updated hash


# Method to print a list and make it look pretty
# input:  name of list/hash
# steps:  print Title "Shopping List" and date
#         iterate through each item in the hash and print with.to_sym
# output:  Pretty list


def grocery_list (str)
  food_list = Hash.new(0)
  
  food_array = str.split(" ")
  food_array.each do |item|
    food_list[item] = 1
  end
  
  printpretty(food_list)

end

def add_item (list, item, quantity)
  list[item] = quantity
  printpretty(list)
end

def remove_item (list, item)
  list.delete(item)
  printpretty(list)
end

def update (list, item, quantity)
  list[item] = quantity
  printpretty(list)
end

def printpretty (list)
  list.each do |item, quantity|
    puts "You are buying #{quantity} of #{item}"
  end
end


example_string = "carrots apples cereal pizza"
example_list = grocery_list(example_string)
example_list
add_item(example_list, "bananas", 7)
example_list
remove_item(example_list, "apples")
update(example_list, "pizza", 5)


# I learned the importance of pseudocoding as a reference for the actual coding
# Using hashes allows you to change keys and values seperately
# The method returns the results of the actions you program it to conduct over the parameters
# You can pass any parameters that fit the method, results from previous methods, blocks, etc.
# You can pass informations using yield
# This exercise solidified multiple ways of manipulating hashes, passing info through methods, and the importance of pseudocoding. 