require 'pry'
include Recaptcha::Adapters::ViewMethods
include Recaptcha::Adapters::ControllerMethods

Recaptcha.configure do |config|
  config.site_key  = ENV['RECAPTCHA_PUBLIC_KEY']
  config.secret_key = ENV['RECAPTCHA_PRIVATE_KEY']
end

get '/login' do
  alert = params['alert']
  recaptcha_tags()
  
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

  if verify_recaptcha()
    user && BCrypt::Password.new(user['password_digest']) == password 

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