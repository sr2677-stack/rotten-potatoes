if Rack.release >= '2.1'
  module Rack
    class Static
      def initialize(app, options = {})
        @app = app
        @urls = options[:urls] || ["/favicon.ico"]
        @index = options[:index]
        @gzip = options[:gzip]
        @cascade_for = options[:cascade_for]
        
        root = options[:root] || Dir.pwd
        @file_server = Rack::Files.new(root, options[:header_rules] || {})
      end
    end
  end
end