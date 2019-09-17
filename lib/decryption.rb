require './mod/shift'

class Decryption
  include Shift

  attr_reader :ciphertext, :key, :date

  def initialize(ciphertext, key, date)
    @ciphertext = ciphertext
    @key = key
    @date = date
  end

  def decrypt                           
    shifts = shift.map do |rotate|
      27 - rotate
    end
    encrypt_msg(@ciphertext, shifts)
  end

end
