# is_bullshit

### Call bullshit on stuff.

Sometimes things that are "truthy" are really just bullshit. This gem is for when falsey/truthy aren't enough.

## Installation

It's a gem. Add this line to your application's Gemfile:

```ruby
gem 'is_bullshit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install is_bullshit

## Usage

Call `.bullshit?` on stuff. `.is_bullshit?` was added as an alias also because the gem name `bullshit` was already taken and I wanted a method to match the gem name.

The following values qualify as total bullshit: `[nil, [], {}, 0, false, 'undefined', 'false', '', '0', 'nil', 'null']`

`.legit?` and `.seems_legit?` are the opposite of `.bullshit?` 

````
nil.bullshit?               # true
''.bullshit?                # true
[].bullshit?                # true
{}.bullshit?                # true
nil.is_bullshit?            # also works

# ...etc

'undefined'.seems_legit?    # false
'foo'.bullshit?             # false
'foo'.seems_legit?          # true
````

## Development

First, decide if this is something you truly want to spend time on. Life is short and getting shorter, and each moment is precious.

If you still want to spend a slice of your limited time on Earth making some meaningless change to `is_bullshit`: after checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment with bullshit.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alexford/is_bullshit. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

