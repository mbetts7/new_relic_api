## Instructions to get up and running

#### Development:

To run local server...  
`$ foreman run ruby app.rb`

To send post request email from command line...  
`$ curl --data "" http://localhost:4567/send_email.json`

#### Production:

To send post request email from command line...  
`$ curl --data "" http://new-relic-email-api.herokuapp.com/send_email.json`