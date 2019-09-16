require 'date'
require './lib/encryption'
require './lib/decryption'
require './lib/random_num_generator'

class Enigma
# It can optionally take a Key and Date as arguments to use for encryption.
# If the key is not included, generate a random key.
# If the date is not included, use today’s date.
  def encrypt(msg, key = RandNumGenerator.create_num, date = Date.today.strftime("%d%m%y"))
    encryption = Encryption.new(msg, key, date)
    {encryption: encryption.encrypt, key: key, date: date}
  end

# The decrypt method can optionally take a date as the third argument.
# If no date is given, this method should use today’s date for decryption.
  def decrypt(msg, key, date = Date.today.strftime("%d%m%y"))
    decryption = Decryption.new(msg, key, date)
    {decryption: decryption.decrypt, key: key, date: date}
  end

end
