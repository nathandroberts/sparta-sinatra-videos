class VideosController < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, 'views')}
#   $photos = [{
# 	 id: 0,
# 	 title: "Photo 1",
# 	 body: "This is the first post",
#    source: "https://78.media.tumblr.com/avatar_7340c7bed74b_128.png"
# },
# {
#     id: 1,
#     title: "Photo 2",
#     body: "This is the second post",
#     source: "https://is2-ssl.mzstatic.com/image/thumb/Purple3/v4/99/3d/7d/993d7d30-a2f9-085f-8b70-ff71f1eee2bf/source/256x256bb.jpg"
# },
# {
#     id: 2,
#     title: "Photo 3",
#     body: "This is the third post",
#     source: "https://static-s.aa-cdn.net/img/ios/905870222/30e83b11b5a9a086abd5f8a4acab174d?v=1"
# }];

  get '/' do
    @title = 'Photo Homepage'
    erb :'videos/home'
  end

  get '/videos' do
    @title = 'Photos'
    @videos = $videos
    erb :'videos/index'
  end

  get '/videos/new' do
    'New photo form'
  end

  post '/videos' do
    'post photo'
  end

  get '/videos/:id' do
    id = params[:id].to_i
    @photo = $videos[id]
    erb :'videos/show'
  end
  get '/videos/:id/edit' do
    @paragraph = 'edit this photo'
    id = params[:id].to_i
    @photo = $videos[id]
    erb :'videos/edit'
  end
  put '/videos/:id' do
    "update photo#{params[:id]}"
  end
  delete '/videos/:id' do
    "delete id #{params[:id]}"
  end
end
