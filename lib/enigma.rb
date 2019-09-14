class Enigma
    attr_reader :encrypted,
                :decrypted

  def initialize
    @encrypted = Hash.new
    @decrypted = Hash.new
  end

# It can optionally take a Key and Date as arguments to use for encryption.
# If the key is not included, generate a random key.
# If the date is not included, use today’s date.
  def encrypt(message, key = nil, date = nil)
    @encrypted[:encryption] = message
    @encrypted[:key] = key
    @encrypted[:date] = date
    encrypted
  end

# The decrypt method can optionally take a date as the third argument.
# If no date is given, this method should use today’s date for decryption.
  def decrypt(ciphertext, key, date = nil)
    @decrypted[:decryption] = ciphertext
    @decrypted[:key] = key
    @decrypted[:date] = date
    decrypted
  end

end
