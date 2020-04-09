system 'clear'
require 'pry'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class TestExercise < Minitest::Test
  def test_odd
    value = 4
    assert_equal(true, value.odd?)
  end
end
puts
