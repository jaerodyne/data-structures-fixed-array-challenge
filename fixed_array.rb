class FixedArray
# FixedArray#new(size): Instantiate a new FixedArray with space for size elements.

	def initialize(size = 16)
		@array = Array.new(size, nil)
	end	

	def size
		@array.length
	end
# FixedArray#get(index): Get a value from the array at the specified index. Throw an OutOFBoundsException if the user tries to get a value at an index outside the bounds of the fixed array.
	def get(index)
		raise IndexOutOfBoundsError if index >= self.size || index < 0
    @array[index]
	end

# FixedArray#set(index, element): Set a value in the array at a specific index and return the element. Throw an OutOFBoundsException if the user tries to set a value at an index outside the bounds of the fixed array.
	def set(index, element)
		raise IndexOutOfBoundsError if element[index] >= self.size || index < 0
    @array[index]
	end

end

class IndexOutOfBoundsError < StandardError; end