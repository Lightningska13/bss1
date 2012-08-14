# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bss1::Application.initialize!

# Configuration for using SendGrid on Heroku
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :user_name => "patrick.lighthall",
  :password => "091810bp",
  :domain => "blacksailsstudio.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

