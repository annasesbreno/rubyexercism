class Pangram

 def self.pangram?(str)
   alphabet = ('a'..'z').to_set
   str.downcase.chars.each do |char|
     #deletes characters based upon the intersection of its arrays.
     alphabet.delete(char)
   end
   #It will return true if at least one of the arrays is not false or nil
   alphabet.empty?
 end
end