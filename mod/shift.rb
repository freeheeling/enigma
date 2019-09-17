module Shift

  def keys
    a_key = @key[0..1].to_i
    b_key = @key[1..2].to_i
    c_key = @key[2..3].to_i
    d_key = @key[3..4].to_i
    [a_key, b_key, c_key, d_key]
  end

  def offsets
    nums = (@date.to_i ** 2).to_s
    a_offset = nums[-4].to_i
    b_offset = nums[-3].to_i
    c_offset = nums[-2].to_i
    d_offset = nums[-1].to_i
    [a_offset, b_offset, c_offset, d_offset]
  end

  def shift
    shifts = []
    keys.zip(offsets).each do |shift|
      shifts << shift[0] + shift[1]
    end
    shifts
  end

  def encrypt_msg(message, shift)
    chars = ("a".."z").to_a << " "
    transform_msg = message.downcase.split("")
    transform_msg.each_with_index do |char, index|
      if chars.include?(char)
        chars_index = chars.index(char)
        transform_chars = chars.rotate(shift[index % 4])
        transform_msg[index] = transform_chars[chars_index]
      end
    end.join("")
  end

end
