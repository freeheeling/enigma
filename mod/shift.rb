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

  def shifts
    keys.zip(offsets).map { |shift| shift[0] + shift[1] }
  end

  def rotate_msg(shift)
    alpha = ('a'..'z').to_a << ' '
    rotated_msg = @msg.downcase.split('')
    # each_with_index
    rotated_msg.each_with_index do |char, index|
      if alpha.include?(char)
        alpha_index = alpha.index(char)
        rotated_alpha = alpha.rotate(shift[index % 4])
        rotated_msg[index] = rotated_alpha[alpha_index]
      end
    end
    rotated_msg.join('')
  end

end
