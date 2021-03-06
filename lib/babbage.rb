require "babbage/array"
require "babbage/version"

module Babbage

  def self.binomial_coefficient(number, choices)
    case number
    when 0
      0.0
    else
      factorial(number).to_f / (factorial(choices).to_f * factorial(number - choices).to_f)
    end
  end

  def self.factorial(number)
    case number
    when 0, 1
      1
    else
      1.upto(number).inject(:*)
    end
  end

end
