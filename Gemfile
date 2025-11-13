source 'https://rubygems.org'
ruby '3.1.2'

# Rails
gem 'rails', '5.2.8.1'

# App server
gem 'puma', '~> 4.3'

# Frontend + Asset pipeline
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 4.1.20'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

# JS runtime required for asset precompile
gem 'execjs'

# Add this! Heroku needs a JS engine
gem 'mini_racer', platforms: :ruby

group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara'
end

group :production do
  gem 'pg'
end
