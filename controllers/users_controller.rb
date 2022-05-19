get '/sign_up' do
  alert = params['alert']

  if alert == nil 
    erb :'users/new', locals: {
    message: ""
  }
  elsif alert.include?("Ups")
    erb :'users/new', locals: {
      message: alert
    } 
  else
    erb :'users/new', locals: {
      message: "Congratulations! Your user has been created"
    }
  end
end

post '/users/create_user' do
  name = params['name']
  email = params['email']
  password = params['password']
  user_role = "user"

  if find_user_by_email(email).to_a.count > 0
    redirect '/sign_up?alert=Ups, your email has been taken already!'
  # elsif find_user_by_name(name).to_a.count > 0
  #   redirect '/sign_up?alert-Ups, someone is using your username already!'
  else
    create_user(name, email, password, user_role) 
    redirect "/sign_up?alert=Contragulations! Your account has been created. You can now access our content as a user"
  end

end