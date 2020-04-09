system 'clear'
require 'pry'
require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class TestExercise < Minitest::Test
  def test_
    assert_raises NoExperienceError do
      employee.hire
    end
  end
end
puts
