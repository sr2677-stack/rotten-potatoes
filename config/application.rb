require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module Rottenpotatoes
  class Application < Rails::Application
    config.load_defaults 6.1

    # Enable Sprockets for Rails 7
    require "sprockets/railtie"

    config.assets.initialize_on_precompile = false
    config.autoload_lib(ignore: %w(assets tasks))
  end
end
