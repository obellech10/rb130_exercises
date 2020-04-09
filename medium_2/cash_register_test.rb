system 'clear'
require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(50)
  end

  def test_accept_money
    @transaction.amount_paid = 50
    assert_equal(150, @register.accept_money(@transaction))
  end

  def test_change
    @transaction.amount_paid = 75
    assert_equal(25, @register.change(@transaction))
  end

  def test_give_receipt
    # A newline character had to be added to the end of the argument, this
    # is because puts appends a newline to the message that is output
    assert_output("You've paid $50.\n") do
      @register.give_receipt(@transaction)
    end
  end
end
