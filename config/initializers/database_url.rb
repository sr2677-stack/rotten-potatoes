# Force Rails to use DATABASE_URL in production
if Rails.env.production?
  ENV['DATABASE_URL'] ||= ENV['HEROKU_POSTGRESQL_URL']
end
