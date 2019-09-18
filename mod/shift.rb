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

  def characters
    ("a".."z").to_a << " "
  end

  def encrypt_msg(message, shift)
    transform_msg = message.downcase.split("")
    transform_msg.each.with_index do |character, index| unless
      !characters.include?(character)
        transform_characters = characters.rotate(shift[index % 4])
        characters_position = characters.index(character)
        transform_msg[index] = transform_characters[characters_position]
      end
    end.join("")
  end

end
