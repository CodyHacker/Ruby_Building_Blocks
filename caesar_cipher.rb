#Caesar Cipher using two circular queues

Alpha_Upper = ("A".."Z").to_a
Alpha_Lower = ("a".."z").to_a

def caesar_cipher(the_string, cipher_offset)
	cipher_string = ""
	the_string.each_char do |char|
		char =~ /[A-Za-z]/ ? cipher_string << cipherize(char, cipher_offset) : cipher_string << char
	end
	cipher_string
end

def cipherize(char, cipher_offset)
	the_Alpha = char.downcase == char ? Alpha_Lower : Alpha_Upper
	index_number = the_Alpha.index(char) + cipher_offset
	index_number -= the_Alpha.size if index_number > 25
	return_char = the_Alpha[index_number]
end


p caesar_cipher("What a string!", 5)