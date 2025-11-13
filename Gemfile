source 'https://rubygems.org'

ruby '3.1.4'

# Rails
gem 'rails', '~> 6.1.7'


# Development + test use sqlite3
group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'capybara', '~> 2.18.0'
end

# Production uses PostgreSQL (Heroku)
group :production do
  gem 'pg'
end

# Asset pipeline + UI
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 2.5.0'
gem 'jbuilder', '~> 2.7'

# Server
gem 'puma', '~> 3.12'


gem 'rack', '~> 2.0.8'

