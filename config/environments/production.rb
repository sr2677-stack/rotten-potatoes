Rails.application.configure do
  config.cache_classes = true
  config.eager_load = true

  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?
  
  config.assets.js_compressor = Uglifier.new(harmony: true)
  config.assets.compile = true
  config.assets.digest = true

  config.log_level = :info
  
  config.logger = ActiveSupport::Logger.new($stdout)
  config.logger.formatter = Logger::Formatter.new

  config.active_record.dump_schema_after_migration = false
end
