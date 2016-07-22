#$LOAD_PATH << File.expand_path("spec/lib")

ENV["RAILS_ENV"] ||= 'test'
$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)


#require 'rspec/autorun'
require 'active_support'
require 'dlibhydraworkflow'

RSpec.configure do |config| 

  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect] 
  end
  
end

