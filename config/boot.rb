
require File.expand_path('../../bigdecimal_patch', __FILE__)
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

# Only require bootsnap if it's available
begin
  require 'bootsnap/setup'
rescue LoadError
  # Bootsnap not available, skip it
end

# Patch for Ruby 3.1+ and Rails 5.2 compatibility
# Wait until ActionDispatch is actually loaded
Rails.application.config.before_initialize do
  ActionDispatch::Static.class_eval do
    remove_method :initialize if method_defined?(:initialize)
    
    def initialize(app, path, index: 'index', headers: {})
      @app = app
      @file_handler = ActionDispatch::FileHandler.new(path, index: index, headers: headers)
    end
  end
end
