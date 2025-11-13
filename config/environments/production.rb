Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # STATIC FILES — Heroku handles this automatically in Rails 5.2
  # REMOVE ANY custom public_file_server.enabled lines
  config.public_file_server.enabled = true

  # Asset pipeline
  config.assets.compile = false

  # Logging
  config.log_level = :info
  config.log_tags = [:request_id]

  # Use default Rails logger (no custom logger!)
  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = ::Logger::Formatter.new
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  config.active_record.dump_schema_after_migration = false
end
