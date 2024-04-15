# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require_relative "../spec/dummy/config/environment"
require "rails/test_help"

if ENV["CI"]
  require "simplecov"
  require "simplecov-collate"
  SimpleCov.start "rails"
  SimpleCov.formatter = SimpleCov::Formatter::CollateFormatter
end