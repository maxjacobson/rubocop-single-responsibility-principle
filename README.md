# RuboCop::SingleResponsibilityPrinciple

[![Build Status](https://travis-ci.org/maxjacobson/rubocop-single-responsibility-principle.svg?branch=master)](https://travis-ci.org/maxjacobson/rubocop-single-responsibility-principle)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-single-responsibility-principle'
```

And then execute:

```
$ bundle
```

## Usage

**Note**: Thanks to [nevir/rubocop-rspec][], which I copied a lot from,
including this section.

[nevir/rubocop-rspec]: https://github.com/nevir/rubocop-rspec

You need to tell RuboCop to load the extension. There are three ways to do
this:

### RuboCop configuration file

Put this into you `.rubocop.yml`.

```
require: rubocop-single-responsibility-principle
```

Now you can run `rubocop` and it will automaticly load the RuboCop RSpec
cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-single-responsibility-principle
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-single-responsibility-principle'
end
```

And then just run Rubocop like normal, and it should include this custom cop.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake spec` to run the tests. You can also run `bin/console` for an
interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/maxjacobson/rubocop-single-responsibility-principle. This
project is intended to be a safe, welcoming space for collaboration, and
contributors are expected to adhere to the [Contributor
Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT
License](http://opensource.org/licenses/MIT).

