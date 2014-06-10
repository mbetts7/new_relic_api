require 'mandrill'

class MyEmailer
  def send
    
    m = Mandrill::API.new
    message = {
      :subject => 'hello world',
      :from_name => 'Mike Betts',
      :text => 'Hi Ian! Sending you an email via this API I just made.',
      :to =>[
        {
          :email => 'iolsen@newrelic.com',
          :name => 'Ian Olsen'
        },
        {
          :email => 'mbetts7@gmail.com',
          :name => 'Mike Betts',
          :type => 'bcc'
        } 
      ],
      :from_email =>'noreply@example.com'
    }
    sending = m.messages.send message
    puts sending
    
  end
end