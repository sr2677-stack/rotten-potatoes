require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module Rottenpotatoes
  class Application < Rails::Application
    # Load default configuration for Rails 5.2
    config.load_defaults 5.2

    # Add any additional configuration below this line.
  end
end
