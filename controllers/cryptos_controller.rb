get '/cryptos' do
  btc_price = btc_price()
  apiquinas = apiquinas()

  crypto_list = all_crypto()

  erb :'cryptos/index', locals: {
    crypto_list: crypto_list,
    btc_price: btc_price,
    apiquinas: apiquinas
  }
end

get '/cryptos/list_all' do
  crypto_list = all_crypto()

  erb :'cryptos/list_all', locals: {
    crypto_list: crypto_list,
  }
end

get '/cryptos/new' do

  erb :'cryptos/new'
end

post '/cryptos' do
  name = params['name']
  acronym = params['acronym']
  year_created = params['year_created']
  year_ended = params['year_ended']
  country = params['country']
  project_type = params['project_type']
  extra_info = params['extra_info']

  create_crypto(name, acronym, year_created, year_ended, country, project_type, extra_info)

  redirect '/cryptos/list_all'
end

get '/cryptos/:id/edit' do
  id = params['id']

  crypto = edit_crypto(id)

  erb :'cryptos/edit', locals: {
    crypto: crypto
  }
end

put '/cryptos/:id' do
  id = params['id']
  name = params['name']
  acronym = params['acronym']
  year_created = params['year_created']
  year_ended = params['year_ended']
  country = params['country']
  project_type = params['project_type']
  extra_info = params['extra_info']

  update_crypto(name, acronym, year_created, year_ended, country, project_type, extra_info, id)

  redirect '/cryptos/list_all'
end

delete '/cryptos/:id' do
  id = params['id']

  delete_crypto(id)

  redirect '/cryptos/list_all'
end