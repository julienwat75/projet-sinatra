require 'sinatra'
require 'shotgun'
get '/hi' do

"<form action='/save' method='post'>
 <input type='text' name='nom' />
 <button type='submit'>Envoyer votre message</button>



</form>"

end



get '/' do
  erb:listes
end

get '/clients' do
  erb:listes_clients

end


get '/vetements' do
  erb:listes_vetements
  
end

