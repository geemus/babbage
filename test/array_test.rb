require_relative 'helper'

class TestArray < MiniTest::Unit::TestCase

  def setup
    @even = 0.upto(5).to_a
    @odd = 1.upto(5).to_a
  end

  def test_average
    assert_equal 2.5, Babbage::Array.average(@even)
    assert_equal 3,   Babbage::Array.average(@odd)
  end

  def test_maximum
    assert_equal 5, Babbage::Array.maximum(@even)
    assert_equal 5, Babbage::Array.maximum(@odd)
  end

  def test_median
    assert_equal 2.5, Babbage::Array.median(@even)
    assert_equal 3,   Babbage::Array.median(@odd)
  end

  def test_minimum
    assert_equal 0, Babbage::Array.minimum(@even)
    assert_equal 1, Babbage::Array.minimum(@odd)
  end

  def test_percentile
    assert_equal 4,   Babbage::Array.percentile(@even,  80)
    assert_equal 4.5, Babbage::Array.percentile(@odd,   80)
  end

  def test_standard_deviation
    assert_equal 1.707825127659933,   Babbage::Array.standard_deviation(@even)
    assert_equal 1.4142135623730951,  Babbage::Array.standard_deviation(@odd)
  end

  def test_sum
    assert_equal 15, Babbage::Array.sum(@even)
    assert_equal 15, Babbage::Array.sum(@odd)
  end

  def test_variance
    assert_equal 2.9166666666666665,  Babbage::Array.variance(@even)
    assert_equal 2.0,                 Babbage::Array.variance(@odd)
  end

end
