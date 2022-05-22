require 'sendgrid-ruby'
include SendGrid

include Recaptcha::Adapters::ViewMethods
include Recaptcha::Adapters::ControllerMethods

Recaptcha.configure do |config|
  config.site_key  = ENV['RECAPTCHA_PUBLIC_KEY']
  config.secret_key = ENV['RECAPTCHA_PRIVATE_KEY']
end

get '/about/index' do
  erb :'about/index'
end

get '/about/contact' do
  alert = params['alert']
  recaptcha_tags()

  if alert == nil 
    erb :'about/contact', locals: {
    message: "",
    captcha_key: ENV['RECAPTCHA_PUBLIC_KEY']
  }
  else 
    erb :'about/contact', locals: {
      message: alert,
      captcha_key: ENV['RECAPTCHA_PUBLIC_KEY']
  } 
  end
end

post '/about/contact' do
  name = params['name']
  email = params['email']
  message = params['message']

  if logged_in?
    send_message(name, email, message)

    send_email(name, email, message)

    redirect '/about/contact?alert=Your message has been safely sent!'
  else
    if verify_recaptcha()

      send_message(name, email, message)

      send_email(name, email, message)

      redirect '/about/contact?alert=Your message has been safely sent!'
    else
      redirect '/about/contact?alert=Do not be a robot!'
    end
  end
end
