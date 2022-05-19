get '/sign_up' do
  erb :'users/new'
end

post 'users/create_user' do
  name = params['name']
  email = params['email']
  password = params['password']

  create_user(name, email, password)

  redirect '/'
end