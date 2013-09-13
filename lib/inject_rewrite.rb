
class Array


	def injection 
		memo = self[0]
		self[1..-1].each {|element| memo = yield(memo,element)}
		return memo
	end 

end 