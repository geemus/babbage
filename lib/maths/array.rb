module Maths

  module Array

    # percentile

    def self.average(array)
      sum(array) / array.length
    end

    def self.mean(array)
      average(array)
    end

    def self.median(array)
      index = (array.length / 2.0).floor
      if array.length % 2 == 1
        array[index]
      else
        average(array[index, index + 1])
      end
    end

    def self.std(array)
      avg = average(array)
      squared_diffs = array.map do |value|
        diff = value - avg
        diff * diff
      end
      Math.sqrt(average(squared_diffs))
    end

    def self.sum(array)
      array.inject(0) {|sum,value| sum + value}
    end

    # variance

  end
end

if __FILE__ == $0
  array = 0.upto(5).to_a
  p "average(#{array.inspect}): #{Maths::Array.average(array)}"
  p "median(#{array.inspect}): #{Maths::Array.median(array)}"

  array = 1.upto(5).to_a
  p "median(#{array.inspect}): #{Maths::Array.median(array)}"

  array = [2, 4, 4, 4, 5, 5, 7, 9]
  p "std(#{array.inspect}): #{Maths::Array.std(array)}"

  array = 0.upto(5).to_a
  p "sum(#{array.inspect}): #{Maths::Array.sum(array)}"
end