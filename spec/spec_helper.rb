# frozen_string_literal: true

ENV['ENVIRONMENT'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')

require 'capybara'
require 'capybara/rspec'
require 'rspec'

Capybara.app = ProjectBnB

require 'simplecov'
require 'simplecov-console'
require 'database_helper'

RSpec.configure do |config|
  config.before(:each) do
    clear_table
  end
end

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  #SimpleCov::Formatter::Console,
  #SimpleCov::Formatter::HTMLFormatter
  ])
   # SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
