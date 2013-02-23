require_relative 'helper'

class TestBabbage < MiniTest::Unit::TestCase

  def test_binomial_coefficient
    assert_equal 1.0,   Babbage.binomial_coefficient(5, 0)
    assert_equal 5.0,   Babbage.binomial_coefficient(5, 1)
    assert_equal 10.0,  Babbage.binomial_coefficient(5, 2)
    assert_equal 10.0,  Babbage.binomial_coefficient(5, 3)
    assert_equal 5.0,   Babbage.binomial_coefficient(5, 4)
    assert_equal 1.0,   Babbage.binomial_coefficient(5, 5)
  end

  def test_factorial
    assert_equal 1,   Babbage.factorial(0)
    assert_equal 1,   Babbage.factorial(1)
    assert_equal 2,   Babbage.factorial(2)
    assert_equal 6,   Babbage.factorial(3)
    assert_equal 24,  Babbage.factorial(4)
    assert_equal 120, Babbage.factorial(5)
  end

end
