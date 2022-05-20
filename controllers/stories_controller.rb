require 'pry'

get '/stories/index' do
  stories_list = all_stories()
  crypto_list = all_crypto()

  erb :'stories/index', locals: {
    stories_list: stories_list,
    crypto_list: crypto_list
  }

end

get '/stories/new' do

  erb :'stories/new'

end

post '/stories' do
  user_posting_id = current_user['id']
  user_posting_name = current_user['name']
  crypto_id = params['crypto_id']
  story = params['story']

  create_story(user_posting_id, user_posting_name, crypto_id, story)
# binding.pry
  redirect '/stories/index'
end

get '/stories/:id/edit' do
  id = params['id']
  
  story = edit_stories(id)

  erb :'stories/edit', locals: {
    story: story
  }
end

put '/stories/:id' do
  crypto_id = params['crypto_id']
  story = params['story']
  id = params['id']

  update_story(crypto_id, story, id)

  redirect '/stories/index'
end

delete '/stories/:id' do
  id = params['id']

  delete_story(id)

  redirect '/stories/index'
end