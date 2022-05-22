require 'sendgrid-ruby'
include SendGrid

def send_email(name, email, message)
  from = Email.new(email: 'palvarezimaz@gmail.com')
  to = Email.new(email: 'palvarezimaz@gmail.com')
  subject = 'From Dead Cryptos'
  content = Content.new(type: 'text/plain', value: "FROM: #{name}, CONTACT:#{email}, Message: #{message}")
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers
end