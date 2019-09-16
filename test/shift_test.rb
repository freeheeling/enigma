require_relative 'test_helper'

require './mod/shift'
require './lib/encryption'

class ShiftTest < Minitest::Test

  def setup
    @encryption = Encryption.new("hello world", "10001", "110011")
  end

  def test_it_creates_keys
    assert_equal [10, 0, 0, 1], @encryption.keys
  end

  def test_it_creates_offsets
    assert_equal [0, 1, 2, 1], @encryption.offsets
  end

  def test_keys_and_offsets_sum_to_create_shifts
    assert_equal [10, 1, 2, 2], @encryption.shifts
  end

  def test_rotate_msg
    assert_equal "keder ohulw", @encryption.rotate_msg([10, 1, 2, 2])
  end

end
