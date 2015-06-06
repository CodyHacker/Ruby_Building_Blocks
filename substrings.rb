dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, the_dictionary)
	words = words.split(" ")
	frequencies = Hash.new(0)
	the_dictionary.each do |dict_word|
		words.each do |word|
			frequencies[dict_word] += 1  if word.include? dict_word
		end
	end
	frequencies
end


p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)