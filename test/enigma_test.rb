require_relative 'test_helper'

require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  # encrypt a message with a key and date
  def test_it_can_encrypt_with_a_key_and_date
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  # decrypt a message with a key and date
  def test_it_can_decrypt_with_a_key_and_date
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  # encrypt a message with a key (uses today's date)
  def test_it_can_encrypt_with_a_key_and_current_date
    encrypted = @enigma.encrypt("hello world", "02715")

    expected = {
      decryption: "hello world",
      key: "02715",
      date: "130919"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  #decrypt a message with a key (uses today's date)
  def test_it_can_decrypt_with_a_key_and_current_date
    expected = {
      # decryption hash
    }
    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_it_can_encrypt_with_a_random_key_and_current_date
    expted = {
      # encryption hash
    }
    assert_equal expected, @enigma.encrypt("hello world")
  end

end
