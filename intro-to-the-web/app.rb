require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
   erb(:index)
end
