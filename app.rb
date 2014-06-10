require 'sinatra'
require 'sinatra/reloader'
require 'mandrill'

require_relative 'email'

get '/' do
  'API endpoint for sending email'
end

post '/send_email.json' do
  m = MyEmailer.new
  m.send
  puts 'Email Sent'
end

