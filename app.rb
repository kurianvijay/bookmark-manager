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
    Bookmark.create(url: params['url'])
    # -->replaced by the create method in bookmark.rb
    redirect '/bookmarks'
    # p "Form data submitted to the /bookmarks route!"
    # p params
  end
end
