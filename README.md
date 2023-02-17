PrizePicks Client
=================

A client for PrizePicks API.

## Installation

Add this line to your application's Gemfile:
```ruby
gem 'prizepicks'
```

Add then execute:
$ bundle install

Or install it yourself as:
$ gem install prizepicks

## Usage
### Currently this only has fetching /entries

```
client = PrizePicks::Client.new({
    email: example@example.com,
    password: foobar
})

client.sign_in
client.entries
```

## Development

Run `bin/setup` to install dependencies. Then, run `rake test` to verify the test. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/troyizzle/prizepicks.

This project is early in progress, very early.

## License

This gem is available as open-source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
