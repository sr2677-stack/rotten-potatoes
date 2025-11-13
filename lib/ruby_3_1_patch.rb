# lib/ruby_3_1_patch.rb
# Patch for Ruby 3.1+ compatibility with Rails 5.2
module Ruby31Patch
  def self.apply!
    return unless defined?(ActionDispatch::Static)
    
    ActionDispatch::Static.class_eval do
      def initialize(app, path, index: 'index', headers: {})
        @app = app
        @file_handler = ActionDispatch::FileHandler.new(path, index: index, headers: headers)
      end
    end
  end
end