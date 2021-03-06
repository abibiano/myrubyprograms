#  Step 2: Write the snippet to form the imput message.
#  
#  Example: Input Messae  : Hide the gold in the tree stump
#          Formed Message: HIDETHEGOLDINTHETREXESTUMP


class Cipher
  attr_accessor :cifer_square
  LETTERS = ('A'..'Z').to_a.join 
    
  def initialize(key)
    @cifer_square = create_cipher_square key
  end
  
  def form_message(message)
    formed_message = message.upcase.gsub(/[^A-Z]/, '')
    i = 0
    replace_with_x = true
    while i < formed_message.length
      if formed_message[i] == formed_message[i + 1]
        formed_message.insert(i + 1, replace_with_x ? 'X' : 'Z')
        replace_with_x = !replace_with_x
      end
      i += 2
    end
    formed_message.length.even? ? formed_message : formed_message + 'X'
  end
  
  private
    
  def create_key_phrase_array(key)
    key_phrase = key.upcase.gsub(/[^A-Z]/, '')
    key_phrase += ('A'..'Z').to_a.join 
    key_phrase.gsub!('J', 'I')  
    key_phrase.chars.to_a.uniq!
  end

  def create_cipher_square(key)
    key_phrase_array = create_key_phrase_array(key)
    rows = Array.new(5) do |i|
      Array.new(5) do |j|
        key_phrase_array[i * 5 + j]
      end
    end
    rows
  end
  

end

c = Cipher.new('playfair example')
c.cifer_square.each { |e| p e }

puts c.form_message('Congress shall')
