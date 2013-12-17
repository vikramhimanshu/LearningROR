ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default_url_options = { :host => "smtp.gmail.com" }
ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "gmail.com",
    :user_name => "iam007dev@gmail.com",
    :password => "VikRam05",
    :authentication => :plain,
    :enable_starttls_auto => true
}