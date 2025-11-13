Rails.application.configure do
  # Code is not reloaded between requests
  config.cache_classes = true

  # Eager load on boot
  config.eager_load = true

  # Disable full error reports
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # Heroku: serve static assets
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present? || true

  # Use Uglifier for JS compression (Rails 5 compatible)
  config.assets.js_compressor = Uglifier.new(harmony: true)

  # Allow fallback to asset pipeline
  config.assets.compile = true

  # Enable gzip compression
  config.assets.gzip = true

  # Logging
  config.log_level = :info
  config.log_tags = [:request_id]

  config.action_mailer.perform_caching = false
  config.i18n.fallbacks = true
  config.active_support.deprecation = :notify
  config.log_formatter = ::Logger::Formatter.new

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
