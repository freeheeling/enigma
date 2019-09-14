require_relative 'test_helper'

require './lib/random_num_generator'

class RandNumGeneratorTest < Minitest::Test

  def test_it_exists
    assert_instance_of RandNumGenerator, RandNumGenerator.new
  end

  def test_create_num
    num = RandNumGenerator.create_num

    assert_equal true, num.length == 5
    assert_equal true, num.to_i > 0 && num.to_i < 100000
  end

end
