require 'sinatra'
require 'sinatra/reloader'
require 'json'
require 'pony'

configure :development do
  set :email_options, {
    :via => :smtp,
    :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => ENV['GMAIL_SMTP_USER'],
    :password             => ENV['GMAIL_SMTP_PASSWORD'],
    :authentication       => :plain, 
    :domain               => 'localhost:3000' 
    }
  }
end

Pony.options = settings.email_options

get '/' do
  'Send an email API'
end

post '/send_email.json' do
  Pony.mail :to => 'mbetts7@gmail.com',
            :from => 'noreply@example.com',
            :subject => 'hello world',
            :body => 'Hi Ian! Sending you an email via this API I just made.'  
  
  'Email sent'
end
