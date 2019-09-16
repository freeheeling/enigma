require './mod/shift'

class Decryption
  include Shift

  attr_reader :msg, :key, :date

  def initialize(msg, key, date)
    @msg = msg
    @key = key
    @date = date
  end

  def decrypt
    shift = shifts.map { |shift| 27 - shift }
    rotate_msg(shifts)
  end

end
