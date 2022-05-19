require 'pry'

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
    # redirect '/sign_up'
  elsif alert.include?("Congratulations")
    erb :'users/new', locals: {
      message: alert
    }
    # redirect '/sign_up'
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
    create_user(name, email, password, user_role) 
    redirect '/sign_up?alert=Congratulations. Your account has been created. You can now access our content as a user'
  end
end