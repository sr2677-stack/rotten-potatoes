Rails.application.configure do
  # Code reloads on each request in development
  config.cache_classes = false
  config.eager_load = false

  config.consider_all_requests_local = true

  # Caching
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Mailer
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false

  # Deprecations
  config.active_support.deprecation = :log

  # Migration warning
  config.active_record.migration_error = :page_load

  # Assets
  config.assets.debug = true
  config.assets.quiet = true

  # Logger – Rails 6.1 compatible
  config.logger = ActiveSupport::Logger.new($stdout)
  config.log_level = :debug

  # Raises error if a translation is missing.
  # config.i18n.raise_on_missing_translations = true
end
