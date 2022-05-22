
require 'sinatra'
require 'pry'
require 'bcrypt'
require 'httparty'
require 'recaptcha'
require 'sendgrid-ruby'
require 'net/http'
require 'json'

enable :sessions

require './controllers/about_controller'
require './controllers/cryptos_controller'
require './controllers/users_controller'
require './controllers/session_controller'
require './controllers/stories_controller'

require './helpers/sessions_helper'

require './models/about'
require './models/crypto'
require './models/user'
require './models/story'

require './db/db'

get '/' do
  redirect '/cryptos'
end
