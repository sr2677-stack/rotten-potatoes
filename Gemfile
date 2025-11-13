source 'https://rubygems.org'
ruby '3.1.4'

# Rails core
gem 'rails', '5.0.7'
gem 'sqlite3', '~> 1.3.13'

# Asset pipeline and front-end
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 2.5.0'
gem 'jbuilder', '~> 2.0'

# Development tools
gem 'byebug'
gem 'web-console', '~> 2.0'

# Test framework compatible with Rails 4
gem 'capybara', '~> 2.18.0'

# Use Puma (lightweight webserver)
gem 'puma', '~> 3.12.0'

# Use sqlite3 for development and test
group :development, :test do
  gem 'sqlite3', '~> 1.3.13'
end

# Use pg in production (Heroku)
group :production do
  gem 'pg'
  gem 'rails_12factor' # helps static asset serving/logging for Rails 4 on Heroku
end




