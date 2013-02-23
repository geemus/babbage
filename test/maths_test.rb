require_relative 'helper'

class TestMaths < MiniTest::Unit::TestCase

  def test_binomial_coefficient
    assert_equal 1.0,   Maths.binomial_coefficient(5, 0)
    assert_equal 5.0,   Maths.binomial_coefficient(5, 1)
    assert_equal 10.0,  Maths.binomial_coefficient(5, 2)
    assert_equal 10.0,  Maths.binomial_coefficient(5, 3)
    assert_equal 5.0,   Maths.binomial_coefficient(5, 4)
    assert_equal 1.0,   Maths.binomial_coefficient(5, 5)
  end

  def test_factorial
    assert_equal 1,   Maths.factorial(0)
    assert_equal 1,   Maths.factorial(1)
    assert_equal 2,   Maths.factorial(2)
    assert_equal 6,   Maths.factorial(3)
    assert_equal 24,  Maths.factorial(4)
    assert_equal 120, Maths.factorial(5)
  end

end
