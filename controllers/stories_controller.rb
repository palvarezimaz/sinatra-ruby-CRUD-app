get '/stories/index' do
  stories_list = all_stories()

  erb :'stories/index', locals: {
    stories_list: stories_list
  }

end