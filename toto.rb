require 'sinatra'
require 'shotgun'

require "sinatra/activerecord"

set :database, "sqlite3:///foo.sqlite3"

class User < ActiveRecord::Base
end


get '/hi' do

erb:formulaire

end



get '/' do

erb:accueil

  

end

get '/clients' do
  erb:listes_clients


end


get '/vetements' do
  erb:listes_vetements
  
end



post '/save' do
  User.create(params)
  @users = User.all
  erb :listes

end





