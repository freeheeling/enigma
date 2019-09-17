require_relative 'test_helper'

require './lib/encryption'

class EncryptionTest < Minitest::Test

  def setup
    @encryption = Encryption.new("hello world", "02715", "040895")
  end

  def test_it_exists
    assert_instance_of Encryption, @encryption
  end

  def test_initialization
    assert_equal "hello world", @encryption.message
    assert_equal "02715", @encryption.key
    assert_equal "040895", @encryption.date
  end

  def test_it_can_encrypt_a_message
    assert_equal "keder ohulw", @encryption.encrypt
  end

end
