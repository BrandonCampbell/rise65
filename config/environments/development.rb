Rise65::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Log error messages when you accidentally call methods on nil.
  config.whiny_nils = true

  # Show full error reports and disable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Configure the ActionMailer Base class
  config.action_mailer.smtp_settings = {
      :port     =>             '587',
      :address  =>             'smtp.mandrillapp.com',
      :enable_starttls_auto => true,
      :user_name  =>           'app12088416@heroku.com',
      :password =>             'o8a1EVDEROJJC37IjksPnA',
      :domain   =>             'rise65.com',
      :authentication =>       :plain
  }
  
  config.action_mailer.delivery_method = :smtp

  # Specify what domain to use for mailer URLs
  config.action_mailer.default_url_options = {host: "localhost:3000"}

  # Disable delivery errors, bad email addresses will be ignored
  config.action_mailer.raise_delivery_errors = true

  # Print deprecation notices to the Rails logger
  config.active_support.deprecation = :log

  # Only use best-standards-support built into browsers
  config.action_dispatch.best_standards_support = :builtin

  # Raise exception on mass assignment protection for Active Record models
  config.active_record.mass_assignment_sanitizer = :strict

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  config.active_record.auto_explain_threshold_in_seconds = 0.5

  # Do not compress assets
  config.assets.compress = false

  # Expands the lines which load the assets
  config.assets.debug = true

  Paperclip.options[:command_path] = "/usr/local/bin/"

  config.paperclip_defaults = {
    :storage => :s3,
    :s3_credentials => {
      :bucket => "rise65",
      :access_key_id => "AKIAIEMNLPAJDQKESZ6A",
      :secret_access_key => "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"
    }
  }
end
