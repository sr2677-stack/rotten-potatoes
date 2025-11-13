Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

  # Rails 6.1 no longer needs Uglifier
  # REMOVE JS compressor completely
  # config.assets.js_compressor = Uglifier.new(harmony: true)

  config.assets.compile = true   # OK for Heroku
  # digest is automatic in Rails 6.1
  # config.assets.digest = true   # REMOVE

  config.log_level = :info

  # Rails 6.1 logger
  config.logger = ActiveSupport::Logger.new($stdout)
  config.logger.formatter = Logger::Formatter.new

  config.active_record.dump_schema_after_migration = false
end
