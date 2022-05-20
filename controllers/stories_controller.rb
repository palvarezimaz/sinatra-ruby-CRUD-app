get '/stories/index' do
  stories_list = all_stories()
  crypto_list = all_crypto()

  erb :'stories/index', locals: {
    stories_list: stories_list,
    crypto_list: crypto_list
  }

end

post '/stories' do
  current_user_id = current_user['id']
  story_acronym = params['story_acronym']
  user_story = params['user_story']

  create_story(current_user_id, story_acronym, user_story)

  redirect '/stories'
end