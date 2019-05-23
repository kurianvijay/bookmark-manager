require 'sinatra/base'
require_relative './lib/bookmark'
# require_relative './'


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

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/bookmarks'
    p "Form data submitted to the /bookmarks route!"
    # p params
  end
end
