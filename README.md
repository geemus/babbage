# Maths

Ruby maths. Supplements to/for standard library math.

## Installation

Add this line to your application's Gemfile:

    gem 'maths'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install maths

## Usage

### Array Methods

* `Maths::Array.average([1, 2, 3, 4, 5])              # => 3`
* `Maths::Array.maximum([1, 2, 3, 4, 5])              # => 5`
* `Maths::Array.median([1, 2, 3, 4, 5])               # => 3`
* `Maths::Array.minimum([1, 2, 3, 4, 5])              # => 1`
* `Maths::Array.percentile([1, 2, 3, 4, 5], 80)       # => 4.5`
* `Maths::Array.standard_deviation([1, 2, 3, 4, 5])   # => 1.4142135623730951`
* `Maths::Array.sum([1, 2, 3, 4, 5])                  # => 15`
* `Maths::Array.variance([1, 2, 3, 4, 5])             # => 2.0`

### Misc Methods

* `Maths.binomial_coefficient(5, 2) # => 10.0`
* `Maths.factorial(4)               # => 24`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
