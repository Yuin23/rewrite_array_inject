require 'inject_rewrite'

describe 'Array' do 

	context 'can inject, by taking the elements from an array, and' do 

	it 'adds up all numbers' do
		array = [1,2,3,4,5]
		test = array.injection{ |sum, n| sum + n }  
		expect(test).to be 15 
	end 


	it 'multiply all numbers' do 
		array = [1,2,3,4,5]
		test = array.injection{|multiply, n| multiply * n}
		expect(test).to eq 120
	end 

	it 'compare the length of each element and showing the longest one' do 
 		longest_word = %w{yes, no, great}.injection do |memo, word|
			memo.length > word.length ? memo : word
			end 
		expect(longest_word).to eq "great"
	end 


	# xit 'takes the initial from inject to memo' do 
	# end 

	# xit 'takes array[0] as first element' do 
	# end

	# xit 'allows memo getting the previous element, with applied logic' do 
	# end 

end 
end 