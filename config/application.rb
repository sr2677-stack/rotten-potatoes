require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# PATCH FOR RUBY 3.1+ COMPATIBILITY - Add this BEFORE the module declaration
if defined?(ActionDispatch::Static)
  module ActionDispatch
    class Static
      def initialize(app, path, index: 'index', headers: {})
        @app = app
        @file_handler = FileHandler.new(path, index: index, headers: headers)
      end
    end
  end
end

module Rottenpotatoes
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end