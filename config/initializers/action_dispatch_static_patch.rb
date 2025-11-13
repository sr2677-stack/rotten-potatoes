# Patch ActionDispatch::Static for Ruby 3.1+ compatibility
Rails.application.config.after_initialize do
  ActionDispatch::Static.class_eval do
    def initialize(app, path, index: 'index', headers: {})
      @app = app
      @file_handler = ActionDispatch::FileHandler.new(path, index: index, headers: headers)
    end
  end
end