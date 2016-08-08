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

## Configuration
make sure fedora and solr are properly configured. Example can be found in

config/fedora.yml.DEMO

config/solr.yml.DEMO

you may want to create config/fedora.yml and config/solr.yml in your application folder, or merge into your own configuration file.

