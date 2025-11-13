require_relative "boot"
require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "rails/test_unit/railtie"
require "sprockets/railtie"


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
