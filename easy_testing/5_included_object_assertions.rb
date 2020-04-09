system 'clear'
require 'pry'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class TestExercise < Minitest::Test
  def test_
    list = ['xyz', 1, 2]
    assert_includes(list, 'xyz')
  end
end
puts
