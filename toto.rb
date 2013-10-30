require 'sinatra'
require 'shotgun'
require 'pry'
require "sinatra/activerecord"

set :database, "sqlite3:///foo.sqlite3"

class User < ActiveRecord::Base

  def late?
    Date.today < duedate
  end

end


get '/hi' do

  erb :formulaire

end



get '/' do

erb :accueil

  

end

get '/listes' do
  @users=User.all
erb :listes
end




  get '/edit/:id' do


   @user=User.find(params[:id])

   erb :modifier2


    end


put '/:id' do  
   
        @user = User.find params[:id]
        @user.update_attributes nom: params[:nom]
        redirect "/"
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












