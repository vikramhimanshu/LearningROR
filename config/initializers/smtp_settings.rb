ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 465,
    :domain => "gmail.com",
    :user_name => "iam007dev@gmail.com",
    :password => "VikRam05",
    :authentication => "plain",
    :enable_starttls_auto => true
}