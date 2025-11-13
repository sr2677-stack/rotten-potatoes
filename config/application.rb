require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Rottenpotatoes
  class Application < Rails::Application
    config.load_defaults 6.1

    # Use new Rails 6.1 logger system
    config.logger = ActiveSupport::Logger.new($stdout)
    config.log_level = :info
  end
end
