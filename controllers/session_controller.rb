get '/login' do
  alert = params['alert']
  
  if alert == nil
    erb :'sessions/new', locals: {
      message: ""
    }
  else
    erb :'sessions/new', locals: {
      message: alert
    }
  end
end

post '/sessions' do
  email = params['email']
  password = params['password']

  user = find_user_by_email(email)

  if user && BCrypt::Password.new(user['password_digest']) == password
    session['user_id'] = user['id']
    
    redirect '/'
  else
    redirect '/login?alert=Login unsuccessful, please try again'
  end
end

delete '/sessions' do
  session['user_id'] = nil

  redirect '/'
end