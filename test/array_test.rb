require_relative 'helper'

class TestArray < MiniTest::Unit::TestCase

  def setup
    @even = 0.upto(5).to_a
    @odd = 1.upto(5).to_a
  end

  def test_average
    assert_equal 2.5, Maths::Array.average(@even)
    assert_equal 3,   Maths::Array.average(@odd)
  end

  def test_maximum
    assert_equal 5, Maths::Array.maximum(@even)
    assert_equal 5, Maths::Array.maximum(@odd)
  end

  def test_median
    assert_equal 2.5, Maths::Array.median(@even)
    assert_equal 3,   Maths::Array.median(@odd)
  end

  def test_minimum
    assert_equal 0, Maths::Array.minimum(@even)
    assert_equal 1, Maths::Array.minimum(@odd)
  end

  def test_percentile
    assert_equal 4,   Maths::Array.percentile(@even,  80)
    assert_equal 4.5, Maths::Array.percentile(@odd,   80)
  end

  def test_standard_deviation
    assert_equal 1.707825127659933,   Maths::Array.standard_deviation(@even)
    assert_equal 1.4142135623730951,  Maths::Array.standard_deviation(@odd)
  end

  def test_sum
    assert_equal 15, Maths::Array.sum(@even)
    assert_equal 15, Maths::Array.sum(@odd)
  end

  def test_variance
    assert_equal 2.9166666666666665,  Maths::Array.variance(@even)
    assert_equal 2.0,                 Maths::Array.variance(@odd)
  end

end
