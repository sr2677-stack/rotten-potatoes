source 'https://rubygems.org'
ruby '2.7.7'

# Core Rails
gem 'rails', '4.2.11'

# Use sqlite3 in development & test only
group :development, :test do
  gem 'sqlite3', '~> 1.3.13'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'capybara', '~> 2.18.0'
end

# Use PostgreSQL in production (Heroku)
group :production do
  gem 'pg', '~> 0.18'
end

# Asset pipeline / Front-end
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks', '~> 2.5.0'
gem 'jbuilder', '~> 2.0'

# Web server
gem 'puma', '~> 3.12.0'
