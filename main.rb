
require 'sinatra'
require 'pry'
require 'bcrypt'
require 'httparty'

enable :sessions

require './controllers/cryptos_controller'
require './controllers/users_controller'
require './controllers/session_controller'

require './helpers/sessions_helper'

require './models/crypto'
require './models/user'

require './db/db'

get '/' do
  erb :'cryptos/index'
end