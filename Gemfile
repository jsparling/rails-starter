source 'https://rubygems.org'

ruby '2.2.4'

gem 'rails'

gem 'slim-rails' # Slim for layouts, includes scaffolding

gem 'pg'         # Use postgresql as the database for Active Record

# Bootstrap
gem 'bootstrap-sass'
gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'     # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0' # Use CoffeeScript for .coffee assets and views

# gem 'therubyracer', platforms: :ruby # See https://github.com/sstephenson/execjs#readme for more supported runtimes

gem 'jquery-rails'       # Use jquery as the JavaScript library
gem 'turbolinks'         # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.

gem 'autoprefixer-rails' # Add vendor prefixes to CSS rules

group :development do
  gem 'brakeman', :require => false # Find security vulnerabilities

  # gem 'rubycritic', :require => false # run this command to get the report: rubycritic app lib

  gem 'web-console', '~> 2.0' # Access an IRB console on exception pages or by using <%= console %> in views

  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

  gem 'scss_lint', require: false # Linter for scss
  gem 'slim_lint', require: false # Slim linter

  gem 'overcommit', require: false # Manages git hooks
  gem 'metric_fu', require: false  # Creates metrics for project. run: metric_fu
  gem 'guard'       # Allow for automatic tasks to run on file change
  gem 'guard-livereload', :require => false # refresh the browser when a view file changes
  gem 'guard-minitest',   :require => false # Runs tests when files are saved
  gem 'rb-fsevent',       :require => false # Speeds up guard
  gem 'rack-livereload'                     # Set up hooks for guard-livereload
end

group :test do
  gem 'minitest'

  gem 'minitest-reporters' # better display for minitest

  # Capybara for integration testing
  gem 'capybara'
  gem 'capybara-webkit'

  gem 'test_after_commit' # Fix after commits (not needed in Rails 5)

  gem 'database_cleaner' # specify strategy used to clean database after tests
  gem 'mocha', :require => false # Mocha for mocks

  gem 'simplecov', :require => false # Simplecov for test coverage
end
