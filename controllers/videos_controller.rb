class VideosController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, 'views')}
  $videos = [{
    id: 0,
    title: "First Video🔪🔥🔥🔥",
    body: "Glowing 1000 degree KNIFE VS MATCHES",
    source: '<iframe width="560" height="315" src="https://www.youtube.com/embed/OmTUBLNFFAk" frameborder="0" allowfullscreen></iframe>',
    comment: "Roses are red, Violets are blue, The part you're looking for is 4:02﻿﻿"
  },
  {
    id: 1,
    title: "Second Video🔪🔥🔥🔥",
    body: "Glowing 1000 degree KNIFE VS RUBIK'S CUBE",
    source: '<iframe width="560" height="315" src="https://www.youtube.com/embed/OKYAjFX5xy4" frameborder="0" allowfullscreen></iframe>',
    comment: "When you can't solve a Rubik's cube 2:42﻿"
  },
  {
    id: 2,
    title: "Third Video🔪🔥🔥🔥",
    body: "Glowing 1000 degree KNIFE VS FIDGET SPINNER",
    source: '<iframe width="560" height="315" src="https://www.youtube.com/embed/ci_PqoWEFik" frameborder="0" allowfullscreen></iframe>',
    comment: "why does this exist﻿﻿﻿"
    }];

  get '/' do
    @title = 'Homepage of video site'
    # erb :'videos/home'
  end

  get '/videos' do
    @heading = 'Video Page'
    @videos = $videos
    erb :'videos/index'
  end

  get '/videos/new' do
    # 'New photo form'
  end

  post '/videos' do
    # 'post video'
  end

  get '/videos/:id' do
    id = params[:id].to_i
    @video = $videos[id]
    @subheading = 'Top Comment:'
    erb :'videos/show'
  end
  get '/videos/:id/edit' do
    # @paragraph = 'edit this photo'
    # id = params[:id].to_i
    # @photo = $videos[id]
    # erb :'videos/edit'
  end
  put '/videos/:id' do
    # "update photo#{params[:id]}"
  end
  delete '/videos/:id' do
    # "delete id #{params[:id]}"
  end
end
