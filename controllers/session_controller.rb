require 'pry'

get '/login' do
  alert = params['alert']
  
  if alert == nil
    erb :'sessions/new', locals: {
      message: "",
      captcha_key: ENV['RECAPTCHA_PUBLIC_KEY']
    }
  else
    erb :'sessions/new', locals: {
      message: alert,
      captcha_key: ENV['RECAPTCHA_PUBLIC_KEY']
    }
  end
end

post '/sessions' do
  email = params['email']
  password = params['password']

  user = find_user_by_email(email)
  
  result = verify_google_recaptcha(secret_key, response)

  binding.pry
  if user && BCrypt::Password.new(user['password_digest']) == password && result == true
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