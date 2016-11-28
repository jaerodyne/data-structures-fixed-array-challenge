require_relative 'fixed_array'

describe FixedArray do
  
	describe '#new' do
		it 'has a fixed size by default' do
			array = FixedArray.new
			expect(array.size).to eq 16
		end

		it 'can create an array with the indicated size' do
			size = 64
			array = FixedArray.new(size)
			expect(array.size).to eq size
		end
	end

	describe '#get' do
		it 'returns a value at a specific position' do
			array = FixedArray.new
			expect(array.get(1)).to eq nil
		end
		it 'raises an IndexOutOfBoundsError if a retrieved value is out of bounds in the array' do
			array = FixedArray.new(4)
			expect { array.get(6)}.to raise_error(IndexOutOfBoundsError) 
		end
	end

end
