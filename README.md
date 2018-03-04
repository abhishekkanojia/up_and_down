# UpAndDown

Make your rails application down for maintenance. This gem provides three rake tasks for making application up, down and checking current status of application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'up_and_down'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install up_and_down

## Usage

### Down your rails application for maintenance by using:

``` rails site:down ```
or
``` rake site:down ```

Now visit http://localhost:3000 after starting rails server.
You should see

# Site is Down for Maintenance

### Make application up and running again by using:

``` rails site:up ```
or
``` rake site:up ```

### Check status of Application by using:

``` rails site:status ```
or
``` rake site:status ```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/abhishekkanojia/up_and_down.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
