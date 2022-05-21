get '/sign_up' do
  alert = params['alert']

  if alert == nil 
    erb :'users/new', locals: {
    message: ""
  }
  elsif alert.include?("username")
    erb :'users/new', locals: {
      message: alert
    } 
  elsif alert.include?("email")
    erb :'users/new', locals: {
      message: alert
    } 
  elsif alert.include?("Congratulations")
    erb :'users/new', locals: {
      message: alert
    }
  end
end

post '/users/create_user' do
  name = params['name']
  email = params['email']
  password = params['password']
  user_role = "user"
  
  if find_user_by_name(name).to_a.count > 0
    redirect '/sign_up?alert=Ups, it seems that your username is already registered! Please click in -Sign up!- and start again.'
  elsif find_user_by_email(email).to_a.count > 0
    redirect '/sign_up?alert=Ups, your email has been taken already! Please click in -Sign up!- and start again.'
  else
    user = create_user(name, email, password, user_role) 
    
    session['user_id'] = user['id']
    
    redirect '/'
  end
end