1. array = []
2. array.new(5)
3. array.drop(2)
4. array.insert(2, "new_item")
5. array.shift
6. array.include?(item)
7. array2 = [item1, item2]
8.array & array2  #gives single array
  array + array2  #gives third array


def array(x, y, z)
	array = [x, y, z]
end
array 2, 3, 4

  def add_array(y, x)
	array = [y].insert(0, x)
end
add_array(1, 3)