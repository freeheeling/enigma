require_relative 'test_helper'

require './lib/decryption'

class DecryptionTest < Minitest::Test

  def setup
    @decryption = Decryption.new("keder ohulw", "02715", "040895")
  end

  def test_it_exists
    assert_instance_of Decryption, @decryption
  end

  def test_initialization
    assert_equal "keder ohulw", @decryption.ciphertext
    assert_equal "02715", @decryption.key
    assert_equal "040895", @decryption.date
  end

  def test_it_can_decrypt
    assert_equal "hello world", @decryption.decrypt
  end

end
