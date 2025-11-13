require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Rottenpotatoes
  class Application < Rails::Application
    config.load_defaults 6.1

    # Do NOT configure logger here (Rails 6.1 will handle it per environment)
    # REMOVE:
    # config.logger = ActiveSupport::Logger.new($stdout)
    # config.log_level = :info
  end
end
