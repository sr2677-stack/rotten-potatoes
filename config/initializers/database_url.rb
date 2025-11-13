if Rails.env.production?
  ActiveRecord::Base.configurations = {
    Rails.env => {
      "adapter"  => "postgresql",
      "url"      => ENV["DATABASE_URL"]
    }
  }

  ActiveRecord::Base.establish_connection
end
