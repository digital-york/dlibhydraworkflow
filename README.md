# Dlibhydraworkflow

Defines common workflow behaviours for University of York Digital Library.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dlibhydraworkflow', :git => 'git://github.com/digital-york/dlibhydraworkflow.git', branch: 'master'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install dlibhydraworkflow

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/dlibhydra/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Notes

https://github.com/bblimke/webmock
https://robots.thoughtbot.com/how-to-stub-external-services-in-tests
Factory Girl

Things to do:
-- add uketd vocab (do full schema?)

Decisions:
-- MUST have a preflabel; this will be populated to rdfs:label and dc:title on save

