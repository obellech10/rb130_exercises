system 'clear'
require 'pry'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class TestExercise < Minitest::Test
  def test_
    list = ['xyz', 1]
    refute_includes list, 'xyz'
  end
end
puts
