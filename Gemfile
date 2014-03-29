source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Server environments
gem 'mysql2'

# for twitter login
gem 'omniauth'
gem 'omniauth-twitter'
gem 'settingslogic'
gem 'twitter'

# for access controll
gem 'devise'

gem "slim-rails"

# Model Enhancements
gem 'state_machine'

group :development, :test do
  # Web Server
  gem 'puma'

  # Testing
  gem 'rspec'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'

  # Deploy
  gem 'capistrano', '~> 3.0.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'

  # Debugger
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-remote'
  gem 'pry-stack_explorer'

  # Factory
  gem 'factory_girl_rails'
  gem 'ffaker' # Generates dummy names
end

group :test do
  gem "shoulda-matchers"
end