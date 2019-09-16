require './mod/shift'

class Encryption
  include Shift

  attr_reader :msg, :key, :date

  def initialize(msg, key, date)
    @msg = msg
    @key = key
    @date = date
  end

  def encrypt
    rotate_msg(shifts)
  end

end
