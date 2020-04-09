system 'clear'
require 'pry'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class TestExercise < Minitest::Test
  def test_odd
    value = 'XYZ'
    assert_equal('xyz', value.downcase)
  end
end
puts
