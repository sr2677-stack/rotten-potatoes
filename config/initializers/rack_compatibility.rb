# Rack 2.x compatibility fix for Rails 5.2 with Ruby 3.1+
if Rack.release >= "2.1"
  module Rack
    class Static
      alias_method :original_initialize, :initialize
      
      def initialize(app, path, index: 'index', headers: {})
        @app = app
        @file_handler = Rack::Files.new(path, headers)
      end
    end
  end
end