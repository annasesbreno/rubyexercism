class Hamming
	def self.compute(stand1, stand2)
		count = 0
		if stand1.size == stand2.size
			string1 = stand1.split('')
			string2 = stand2.split('')
				
				string1.zip(string2).select{|e| e[0] != e[1] }.size
		end
	end
end