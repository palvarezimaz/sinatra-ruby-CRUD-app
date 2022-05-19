
require 'sinatra'
require 'pry'
require 'bcrypt'

enable :sessions

require './controllers/crypto_controller'
require './controllers/users_controller'
require './controllers/session_controller'

require './helpers/sessions_helper'

require './models/crypto'
require './models/user'

require './db/db'



  