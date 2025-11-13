require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Rottenpotatoes
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # ADD THIS BLOCK HERE - Patch for Ruby 3.1+ compatibility
    config.before_initialize do
      require 'action_dispatch/middleware/static'
      
      ActionDispatch::Static.class_eval do
        def initialize(app, path, index: 'index', headers: {})
          @app = app
          @file_handler = ActionDispatch::FileHandler.new(path, index: index, headers: headers)
        end
      end
    end
    # END OF PATCH

    # rest of your configuration...
  end
end
