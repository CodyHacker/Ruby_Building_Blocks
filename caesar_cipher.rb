#Caesar Cipher using two circular queues

Alpha_Upper = ("A".."Z").to_a
Alpha_Lower = ("a".."z").to_a

def caesar_cipher(the_string, cipher_offset)
	cipher_string = ""
	the_string.each_char do |char|
		if char =~ /[A-Za-z]/
			cipher_string << cipherize(char, cipher_offset)
		else
			cipher_string << char
		end
	end
	cipher_string
end

def cipherize(char, cipher_offset)

	if char.downcase == char
		index_number = Alpha_Lower.index(char) + cipher_offset
		index_number -= Alpha_Lower.size if index_number > 25
		return_char = Alpha_Lower[index_number]
	else
		index_number = Alpha_Upper.index(char) + cipher_offset
		index_number -= Alpha_Upper.size if index_number > 25
		return_char = Alpha_Upper[index_number]
	end
	return_char
end


p caesar_cipher("What a string!", 5)