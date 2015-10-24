source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'

# Slim for layouts, includes scaffolding
gem 'slim-rails'

# Use postgresql as the database for Active Record
gem 'pg'

# Bootstrap
gem 'bootstrap-sass'
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Add vendor prefixes to CSS rules
gem 'autoprefixer-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Find security vulnerabilities
  gem 'brakeman', :require => false

  # Code analysis
  # run this command to get the report: rubycritic app lib
  gem 'rubycritic', :require => false

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'overcommit',       require: false    # Manages git hooks

  gem 'metric_fu'                           # Creates metrics for project. run: metric_fu
  # Allow for automatic tasks to run on file change
  gem 'guard'

  gem 'guard-livereload', :require => false # refresh the browser when a view file changes
  gem 'guard-minitest',   :require => false # Runs tests when files are saved
  gem 'rack-livereload'                     # Set up hooks for guard-livereload
  gem 'rb-fsevent',       :require => false # Speeds up guard
end

group :test do
  gem 'minitest'

  # better display for minitest
  gem 'minitest-reporters'

  # Capybara for integration testing
  gem 'capybara'
  gem 'capybara-webkit'

  # Fix after commits (not needed in Rails 5)
  gem 'test_after_commit'

  # Simplecov for test coverage
  gem 'simplecov', :require => false

  # specify strategy used to clean database after tests
  gem 'database_cleaner'

  # Mocha for mocks
  gem 'mocha', :require => false
end

