module BookKeeping
  VERSION = 3
end

class Hamming

	def self.compute(str1, str2)
	  return 0 if str1 == str2
	  raise ArgumentError.new if str1.length != str2.length
	  str1 = str1.split('')
	  str2 = str2.split('')

	  mutations = str1.each_with_index.select { |l, i| l != str2[i] }

	  return mutations.length
	end

end