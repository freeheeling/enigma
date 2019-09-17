require 'date'
require './lib/encryption'
require './lib/decryption'
require './lib/random_num_generator'

class Enigma

  def encrypt(message, key = RandNumGenerator.create_num, date = Date.today.strftime("%d%m%y"))
    encryption = Encryption.new(message, key, date)
    { encryption: encryption.encrypt, key: key, date: date }
  end

  def decrypt(ciphertext, key, date = Date.today.strftime("%d%m%y"))
    decryption = Decryption.new(ciphertext, key, date)
    { decryption: decryption.decrypt, key: key, date: date }
  end

end
