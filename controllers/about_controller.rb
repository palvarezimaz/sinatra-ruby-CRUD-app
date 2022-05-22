get '/about/index' do
  erb :'about/index'
end

get '/about/contact' do
  alert = params['alert']

  if alert == nil 
    erb :'about/contact', locals: {
    message: ""
  }
  else 
    erb :'about/contact', locals: {
      message: alert
  } 
  end
end

post '/about/contact' do
  name = params['name']
  email = params['email']
  message = params['message']

  send_message(name, email, message)

  redirect '/about/contact?alert=Your message has been safely sent!'
end
