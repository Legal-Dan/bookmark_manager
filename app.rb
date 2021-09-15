require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmark = Bookmark.all
    erb :bookmarks
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/bookmark_added' do
    url = params['url']
    Bookmark.add(url)
    redirect '/'
  end

  get '/remove_bookmark' do
    erb :remove_bookmark
  end

  post '/bookmark_removed' do
    url = params['url']
    Bookmark.remove(url)
    redirect '/'
  end

  run! if app_file == $0
end