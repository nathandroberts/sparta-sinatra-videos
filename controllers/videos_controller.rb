class VideosController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, 'views')}
  $videos = [{
    id: 0,
    title: "First Video",
    body: "This is the first post",
    source: ""
  },
  {
    id: 1,
    title: "Second Video",
    body: "This is the second post",
    source: ""
  },
  {
    id: 2,
    title: "Third Video",
    body: "This is the third post",
    source: ""
    }];

  get '/' do
    @title = 'Homepage of video site'
    # erb :'videos/home'
  end

  get '/videos' do
    @heading = 'Video Page'
    # @videos = $videos
    erb :'videos/index'
  end

  get '/videos/new' do
    # 'New photo form'
  end

  post '/videos' do
    # 'post video'
  end

  get '/videos/:id' do
    # id = params[:id].to_i
    # @photo = $videos[id]
    # erb :'videos/show'
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
