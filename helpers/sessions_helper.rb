def logged_in?
  if session['user_id']
    return true
  else
    return false
  end
end

def admin_login?
  if find_user_by_user_role(session['user_id'])["user_role"] == 'admin'
    return true
  else
    return false
  end
end

def current_user
  if logged_in?
    find_user_by_id(session['user_id'])
  else
    nil
  end
end


# def verify_google_recaptcha(secret_key)
#   status = HTTParty.get("https://www.google.com/recaptcha/api/siteverify?secret_key=#{ENV['RECAPTCHA_PUBLIC_KEY']}&response=#{response}")
#   hash = JSON.parse(status)
#   hash[“success”] == true ? true : false
# end

# require 'active_support/concern'

# module RecaptchaVerifiable
#   extend ActiveSupport::Concern

#   included do
#     before_filter :recaptcha, only: [:create]
#   end

#   def recaptcha
#     reroute_failed_recaptcha && return unless RecaptchaVerifier.verify(params["g-recaptcha-response"], request.ip)
#   end

#   def reroute_failed_recaptcha
#     @person           = Person.new
#     flash.now[:error] = "Please verify you are not a robot."
#     render action: "new"
#   end
# end
