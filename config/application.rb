require_relative "boot"

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "action_cable/engine"
require "action_mailbox/engine"
require "action_text/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Rottenpotatoes
  class Application < Rails::Application
    config.load_defaults 6.1

    config.assets.initialize_on_precompile = false
    config.autoload_lib(ignore: %w(assets tasks))
  end
end
