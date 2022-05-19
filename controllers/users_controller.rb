get '/sign_up' do
  erb :'users/new', locals: {
    message: nil
  }
end

post '/users/create_user' do
  name = params['name']
  email = params['email']
  password = params['password']
  user_role = "user"

  create_user(name, email, password, user_role)

  # erb :'users/new', locals: {
  #   message: ""
  # }
  redirect '/sign_up'
end