# Babbage

Ruby mathematics. Supplements to/for standard library math.

## Installation

Add this line to your application's Gemfile:

    gem 'babbage'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install babbage

## Usage

### Array Methods

* `Babbage::Array.average([1, 2, 3, 4, 5])            # => 3`
* `Babbage::Array.maximum([1, 2, 3, 4, 5])            # => 5`
* `Babbage::Array.median([1, 2, 3, 4, 5])             # => 3`
* `Babbage::Array.minimum([1, 2, 3, 4, 5])            # => 1`
* `Babbage::Array.percentile([1, 2, 3, 4, 5], 80)     # => 4.5`
* `Babbage::Array.standard_deviation([1, 2, 3, 4, 5]) # => 1.4142135623730951`
* `Babbage::Array.sum([1, 2, 3, 4, 5])                # => 15`
* `Babbage::Array.variance([1, 2, 3, 4, 5])           # => 2.0`

### Misc Methods

* `Babbage.binomial_coefficient(5, 2) # => 10.0`
* `Babbage.factorial(4)               # => 24`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
