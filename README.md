# Lazy Initializer

[![Build Status](https://travis-ci.org/atpay/lazy_initializer.png)](https://travis-ci.org/atpay/lazy_initializer)

An initializer helper that doesn't really warrant its own repo or gem, but
serves as a quick example for internal use. It enables creation of classes
that have attribute accessors for the keys provided in a hash used to 
instantiate the class.

## Installation

Add the 'lazy_initializer' to your Gemfile:

```ruby
#Gemfile

gem 'lazy_initializer', :github => "atpay/lazy_initializer"
```

## Usage

```ruby
  class Sample < LazyInitializer
    def test
      @a
    end
  end

  sample = Sample.new(:a => 1, :b => 2)

  sample.a # == 1
  sample.b # == 2
  sample.test # == 1
  sample.a = 3
  sample.a # == 3
  sample.test # == 3
```
