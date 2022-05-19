get '/' do
  btc_price = HTTParty.get("https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=aud")
  ## check for concflicts here
  
  crypto_list = all_crypto()

  erb :'crypto/index', locals: {
    crypto_items: crypto_list
  }
end

## check for conflicts
get '/cryptos/list_all' do
  crypto_list = all_crypto()

  erb :cryptos/list_all, locals: {
    crypto_list: crypto_list
  }
end

get '/crypto/new' do
  erb :'crypto/new'
end

post '/crypto' do
  crypto_name = params['name']
  crypto_acronym = params['acronym']
  crypto_logo_url = params['logo_url']
  crypto_year_created = params['year_created']
  crypto_year_ended = params['year_ended']
  crypto_country = params['country']
  crypto_project_type = params['project_type']
  crypto_extra_info = params['extra_info']

  create_crypto(crypto_name, crypto_acronym, crypto_logo_url, crypto_year_created, crypto_year_ended, crypto_country, crypto_project_type, crypto_extra_info)

  redirect '/'
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
  crypto_name = params['name']
  crypto_acronym = params['acronym']
  crypto_logo_url = params['logo_url']
  crypto_year_created = params['year_created']
  crypto_year_ended = params['year_ended']
  crypto_country = params['country']
  crypto_project_type = params['project_type']
  crypto_extra_info = params['extra_info']

  update_crypto(name, acronym, logo_url, year_created, year_ended, country, project_type, extra_info, id)

  redirect '/'
end

delete '/cryptos/:id' do
  id = params['id']

  delete_crypto(id)

  redirect '/'
end

#UNDER WORK
get '/cryptos/search_crypto' do

  erb :cryptos/search_crypto

end

get '/cryptos/one_crypto' do
  name = params['name']

  crypto = one_crypto()

# binding.pry
  erb :cryptos/one_crypto, locals: {
    crypto: crypto
  }

  redirect '/cryptos/one_crypto'
end