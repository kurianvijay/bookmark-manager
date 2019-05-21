require 'sinatra/base'
require_relative './lib/bookmark'


class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    # @bookmark_list.join
    p ENV 
    erb :bookmarks
  end
end
