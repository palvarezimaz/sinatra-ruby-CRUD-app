get '/cryptos' do
  # btc_price = HTTParty.get("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=aud")
  ## check for concflicts here
  
  crypto_list = all_crypto()

  erb :'cryptos/index', locals: {
    crypto_list: crypto_list,
    # btc_price: btc_price
  }
end

# get '/cryptos/btc_price' do
#   btc_price = HTTParty.get("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=aud")
# # binding.pry
#   redirect '/cryptos'
#   # # price = btc_price['bitcoin']['aud']
#   # erb :index, locals: {
#   #   btc_price: btc_price
#   #   # price: price
#   # }
# end

## check for conflicts
get '/cryptos/list_all' do
  crypto_list = all_crypto()

  erb :'cryptos/list_all', locals: {
    crypto_list: crypto_list
  }
end

get '/cryptos/new' do


  erb :'cryptos/new'
end

post '/cryptos' do
  name = params['name']
  acronym = params['acronym']
  logo_url = params['logo_url']
  year_created = params['year_created']
  year_ended = params['year_ended']
  country = params['country']
  project_type = params['project_type']
  extra_info = params['extra_info']

  create_crypto(name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info)

  redirect '/cryptos/list_all'
end

get '/cryptos/:id/edit' do
  id = params['id']
  
  crypto = edit_crypto(id)

  erb :'crypto/edit', locals: {
    crypto: crypto
  }
end

put '/cryptos/:id' do
  id = params['id']
  name = params['name']
  acronym = params['acronym']
  logo_url = params['logo_url']
  year_created = params['year_created']
  year_ended = params['year_ended']
  country = params['country']
  project_type = params['project_type']
  extra_info = params['extra_info']

  update_crypto(name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info, id)

  redirect '/cryptos'
end

delete '/cryptos/:id' do
  id = params['id']

  delete_crypto(id)

  redirect '/'
end

#UNDER WORK
# get '/cryptos/search_crypto' do

#   erb :cryptos/search_crypto

# end

# get '/cryptos/one_crypto' do
#   name = params['name']

#   crypto = one_crypto()

# # binding.pry
#   erb :cryptos/one_crypto, locals: {
#     crypto: crypto
#   }

#   redirect '/cryptos/one_crypto'
# end