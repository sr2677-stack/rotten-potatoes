Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # FIX FOR HEROKU + RAILS 5.2
  config.public_file_server.enabled = true

  # JS compressor
  config.assets.js_compressor = Uglifier.new(harmony: true)

  # Asset pipeline
  config.assets.compile = true
  config.assets.digest = true

  config.log_level = :info
  config.log_tags = [:request_id]

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
