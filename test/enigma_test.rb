require_relative 'test_helper'

require 'date'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_can_encrypt_with_a_key_and_date
    expected = { encryption: "keder ohulw", key: "02715", date: "040895" }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt_with_a_key_and_date
    expected = { decryption: "hello world", key: "02715", date: "040895" }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_it_can_encrypt_with_a_key_and_current_date
    Date.expects(:today).returns(Date.new(2095,8,4))
    encrypted = @enigma.encrypt("hello world", "02715")

    expected = { encryption: "keder ohulw", key: "02715", date: "040895" }
    assert_equal expected, encrypted
  end

  def test_it_can_decrypt_with_a_key_and_current_date
    Date.expects(:today).returns(Date.new(2095,8,4))

    expected = { decryption: "hello world", key: "02715", date: "040895" }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715")
  end

  def test_it_can_encrypt_with_a_random_key_and_current_date
    RandNumGenerator.expects(:create_num).returns("02715")
    Date.expects(:today).returns(Date.new(2095,8,4))

    expected = { encryption: "keder ohulw", key: "02715", date: "040895" }
    assert_equal expected, @enigma.encrypt("hello world")
  end

end
