# bigdecimal_patch.rb
# Compatibility patch for Rails 4.2 + Ruby 2.7 and above

require 'bigdecimal'

if RUBY_VERSION >= '2.7' && !BigDecimal.respond_to?(:new)
  class BigDecimal
    def self.new(*args)
      BigDecimal(*args)
    end
  end
end
