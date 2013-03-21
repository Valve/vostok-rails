# Vostok::Rails

[![Build Status](https://travis-ci.org/Valve/vostok-rails.png)](https://travis-ci.org/Valve/vostok-rails)

Sick PG import for Rails

## Installation

Add this line to your application's Gemfile:

    gem 'vostok-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install vostok-rails

## Usage

Vostok works directly with PG gem, no other dependencies

Vostok::Rails is an ActiveRecord plugin that adds `import` class method on any model.

```ruby

data = []
10_000.times do
  data << ['String', 99]
end

Customer.import([:name, :balance], data)

```

What Vostok does not do:

1. Run validations
3. Works with other DBs
4. Sanitizes your data

However, what it does is insert rows at a sick rate.

`
10_000 rows inserted with AR - 18 seconds
`

`
10_000 rows inserted with Vostok - 0.2 seconds
`


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
