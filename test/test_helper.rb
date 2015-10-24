require 'simplecov'
require 'metric_fu/metrics/rcov/simplecov_formatter'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::MetricFu
]

SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require "minitest/reporters"
Minitest::Reporters.use!(
  Minitest::Reporters::ProgressReporter.new,
  ENV,
  Minitest.backtrace_filter
)

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

require 'mocha/setup'
require 'database_cleaner'
require 'capybara/rails'

class CapybaraTest < ActionDispatch::IntegrationTest
  include Capybara::DSL

  self.use_transactional_fixtures = false

  def setup
    super
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.start
    Capybara.current_driver = :webkit
    Capybara.javascript_driver = :webkit
    Capybara.default_wait_time = 6
  end

  def teardown
    DatabaseCleaner.clean
    Capybara.reset_sessions!
    # ActionMailer::Base.deliveries.clear
    # Resque.reset!
    super
  end

  def visit(path, options={})
    super(path)

    assert_text(options[:wait_for_text]) if options[:wait_for_text]
    assert_equal(options[:wait_for_path], current_path) if options[:wait_for_path]

    assert_no_bad_string_interpolation
    assert_no_javascript_errors
  end

  def assert_no_bad_string_interpolation
    assert_no_text('#{')
  end

  def assert_no_javascript_errors
    assert page.driver.error_messages.length == 0, 'should not have javascript errors'
  end

end
