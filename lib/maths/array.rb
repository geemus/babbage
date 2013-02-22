module Maths

  module Array

    def self.average(array)
      sum(array).to_f / array.length
    end

    def self.maximum(array)
      array.max
    end

    def self.mean(array)
      average(array)
    end

    def self.median(array)
      percentile(array, 50)
    end

    def self.minimum(array)
      array.min
    end

    def self.percentile(array, target)
      target = target.to_f / 100.0
      index = (array.length - 1) * target
      sorted_array = array.sort
      if index == index.to_i
        sorted_array[index.to_i]
      else
        average(
          sorted_array[index.floor, 2]
        )
      end
    end

    def self.root_mean_square_deviation(array, &estimator)
      Math.sqrt(
        average(
          array.map(&estimator)
        )
      )
    end

    def self.standard_deviation(array)
      avg = average(array)
      root_mean_square_deviation(array) do |value|
        (value - avg) ** 2
      end
    end

    def self.sum(array)
      array.inject(0) {|sum,value| sum + value}
    end

    def self.variance(array)
      avg = average(array)
      average(
        array.map {|value| (value - avg) ** 2 }
      )
    end

  end
end

if __FILE__ == $0
  array = 0.upto(5).to_a
  p "average(#{array.inspect}): #{Maths::Array.average(array)}"
  p "median(#{array.inspect}): #{Maths::Array.median(array)}"

  array = 1.upto(5).to_a
  p "maximum(#{array.inspect}: #{Maths::Array.maximum(array)}"
  p "median(#{array.inspect}): #{Maths::Array.median(array)}"
  p "minimum(#{array.inspect}: #{Maths::Array.minimum(array)}"

  array = 0.upto(10).to_a
  p "percentile(#{array.inspect}, 90): #{Maths::Array.percentile(array, 90)}"
  p "percentile(#{array.inspect}, 95): #{Maths::Array.percentile(array, 95)}"

  array = 1.upto(10).to_a
  p "percentile(#{array.inspect}, 90): #{Maths::Array.percentile(array, 90)}"

  array = [2, 4, 4, 4, 5, 5, 7, 9]
  p "standard_deviation(#{array.inspect}): #{Maths::Array.standard_deviation(array)}"

  array = 0.upto(5).to_a
  p "sum(#{array.inspect}): #{Maths::Array.sum(array)}"

  array = 1.upto(6).to_a
  p "variance(#{array.inspect}): #{Maths::Array.variance(array)}"
end
