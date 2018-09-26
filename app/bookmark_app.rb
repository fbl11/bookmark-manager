require 'sinatra/base'
require './lib/bookmark'

# This is the controller for our Bookmark app
class BookmarkApp < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do

    @url = params[:URL]
    p @url
    Bookmark.add(@url) 
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  post '/create' do
    erb :create
  end

  run! if app_file == $PROGRAM_NAME
end
