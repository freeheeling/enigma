require './mod/shift'

class Encryption
  include Shift

  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
  end

  def encrypt
    encrypt_msg(message, shift)
  end

end
