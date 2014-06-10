require 'mandrill'

class MyEmailer
  def send
    
    m = Mandrill::API.new 
    message = {  
     :subject=> 'hello world',  
     :from_name=> 'Mike Betts',  
     :text=>'Hi Ian! Sending you an email via this API I just made.',  
     :to=>[  
       {  
         :email=> 'mbetts7@gmail.com',
         :name=> 'Ian'  
       }  
     ],  
     :from_email=>'noreply@example.com'  
    }  
    sending = m.messages.send message  
    puts sending
    
  end
end