# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

config.action_mailer.default_options = {from: "my.xmoss@gmail.com" }
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port =>'587',
    :authentication => :plain,
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'heroku.com',
    :enable_startstls_auto => true
}
