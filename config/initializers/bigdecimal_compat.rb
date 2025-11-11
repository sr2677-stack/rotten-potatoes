# config/initializers/bigdecimal_compat.rb
# Patch for Rails 4.2 compatibility with Ruby 2.7+
if RUBY_VERSION >= '2.7' && !BigDecimal.respond_to?(:new)
  class BigDecimal
    def self.new(*args)
      BigDecimal(*args)
    end
  end
end
