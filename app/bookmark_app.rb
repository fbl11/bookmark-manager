require 'sinatra/base'
require './lib/bookmark.rb'


class BookmarkApp < Sinatra::Base

  get '/' do
    @bookmark_list = Bookmark.new
    erb(:bookmark_list)
  end

  run! if app_file == $0
end